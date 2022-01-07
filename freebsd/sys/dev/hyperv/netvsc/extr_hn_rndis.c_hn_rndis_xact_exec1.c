
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct vmbus_xact {int dummy; } ;
struct vmbus_gpa {int gpa_len; scalar_t__ gpa_ofs; scalar_t__ gpa_page; } ;
struct hn_softc {int hn_prichan; int hn_ifp; } ;
struct hn_nvs_sendctx {int dummy; } ;
typedef int bus_addr_t ;


 int HN_CAN_SLEEP (struct hn_softc*) ;
 int HN_XACT_REQ_PGCNT ;
 size_t HN_XACT_REQ_SIZE ;
 int KASSERT (int,char*) ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 scalar_t__ atop (int) ;
 int hn_nvs_send_rndis_ctrl (int ,struct hn_nvs_sendctx*,struct vmbus_gpa*,int) ;
 int if_printf (int ,char*,int) ;
 void const* vmbus_chan_xact_wait (int ,struct vmbus_xact*,size_t*,int ) ;
 int vmbus_xact_activate (struct vmbus_xact*) ;
 int vmbus_xact_deactivate (struct vmbus_xact*) ;
 int vmbus_xact_req_paddr (struct vmbus_xact*) ;

__attribute__((used)) static const void *
hn_rndis_xact_exec1(struct hn_softc *sc, struct vmbus_xact *xact, size_t reqlen,
    struct hn_nvs_sendctx *sndc, size_t *comp_len)
{
 struct vmbus_gpa gpa[HN_XACT_REQ_PGCNT];
 int gpa_cnt, error;
 bus_addr_t paddr;

 KASSERT(reqlen <= HN_XACT_REQ_SIZE && reqlen > 0,
     ("invalid request length %zu", reqlen));




 paddr = vmbus_xact_req_paddr(xact);
 KASSERT((paddr & PAGE_MASK) == 0,
     ("vmbus xact request is not page aligned 0x%jx", (uintmax_t)paddr));
 for (gpa_cnt = 0; gpa_cnt < HN_XACT_REQ_PGCNT; ++gpa_cnt) {
  int len = PAGE_SIZE;

  if (reqlen == 0)
   break;
  if (reqlen < len)
   len = reqlen;

  gpa[gpa_cnt].gpa_page = atop(paddr) + gpa_cnt;
  gpa[gpa_cnt].gpa_len = len;
  gpa[gpa_cnt].gpa_ofs = 0;

  reqlen -= len;
 }
 KASSERT(reqlen == 0, ("still have %zu request data left", reqlen));





 vmbus_xact_activate(xact);
 error = hn_nvs_send_rndis_ctrl(sc->hn_prichan, sndc, gpa, gpa_cnt);
 if (error) {
  vmbus_xact_deactivate(xact);
  if_printf(sc->hn_ifp, "RNDIS ctrl send failed: %d\n", error);
  return (((void*)0));
 }
 return (vmbus_chan_xact_wait(sc->hn_prichan, xact, comp_len,
     HN_CAN_SLEEP(sc)));
}
