
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rndis_msghdr {int rm_type; } ;
struct rndis_comp_hdr {int rm_rid; } ;
struct hn_softc {int hn_ifp; int hn_xact; } ;


 int HN_RNDIS_RID_COMPAT_MAX ;
 int KASSERT (int,char*) ;





 int if_printf (int ,char*,...) ;
 int vmbus_xact_ctx_wakeup (int ,struct rndis_comp_hdr const*,int) ;

void
hn_rndis_rx_ctrl(struct hn_softc *sc, const void *data, int dlen)
{
 const struct rndis_comp_hdr *comp;
 const struct rndis_msghdr *hdr;

 KASSERT(dlen >= sizeof(*hdr), ("invalid RNDIS msg\n"));
 hdr = data;

 switch (hdr->rm_type) {
 case 132:
 case 130:
 case 128:
 case 131:
  if (dlen < sizeof(*comp)) {
   if_printf(sc->hn_ifp, "invalid RNDIS cmplt\n");
   return;
  }
  comp = data;

  KASSERT(comp->rm_rid > HN_RNDIS_RID_COMPAT_MAX,
      ("invalid RNDIS rid 0x%08x\n", comp->rm_rid));
  vmbus_xact_ctx_wakeup(sc->hn_xact, comp, dlen);
  break;

 case 129:







  if_printf(sc->hn_ifp, "RESET cmplt received\n");
  break;

 default:
  if_printf(sc->hn_ifp, "unknown RNDIS msg 0x%x\n",
      hdr->rm_type);
  break;
 }
}
