
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_xact {int dummy; } ;
struct rndis_halt_req {int rm_len; int rm_rid; int rm_type; } ;
struct hn_softc {int hn_ifp; int hn_xact; } ;
struct hn_nvs_sendctx {int dummy; } ;


 int ENXIO ;
 int REMOTE_NDIS_HALT_MSG ;
 scalar_t__ bootverbose ;
 int hn_nvs_sendctx_init (struct hn_nvs_sendctx*,int ,struct vmbus_xact*) ;
 int hn_nvs_sent_xact ;
 int hn_rndis_rid (struct hn_softc*) ;
 int hn_rndis_xact_exec1 (struct hn_softc*,struct vmbus_xact*,int,struct hn_nvs_sendctx*,size_t*) ;
 int if_printf (int ,char*) ;
 struct vmbus_xact* vmbus_xact_get (int ,int) ;
 int vmbus_xact_put (struct vmbus_xact*) ;
 struct rndis_halt_req* vmbus_xact_req_data (struct vmbus_xact*) ;

__attribute__((used)) static int
hn_rndis_halt(struct hn_softc *sc)
{
 struct vmbus_xact *xact;
 struct rndis_halt_req *halt;
 struct hn_nvs_sendctx sndc;
 size_t comp_len;

 xact = vmbus_xact_get(sc->hn_xact, sizeof(*halt));
 if (xact == ((void*)0)) {
  if_printf(sc->hn_ifp, "no xact for RNDIS halt\n");
  return (ENXIO);
 }
 halt = vmbus_xact_req_data(xact);
 halt->rm_type = REMOTE_NDIS_HALT_MSG;
 halt->rm_len = sizeof(*halt);
 halt->rm_rid = hn_rndis_rid(sc);


 hn_nvs_sendctx_init(&sndc, hn_nvs_sent_xact, xact);
 hn_rndis_xact_exec1(sc, xact, sizeof(*halt), &sndc, &comp_len);

 vmbus_xact_put(xact);
 if (bootverbose)
  if_printf(sc->hn_ifp, "RNDIS halt done\n");
 return (0);
}
