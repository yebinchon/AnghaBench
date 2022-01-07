
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct vmbus_xact {int dummy; } ;
struct rndis_set_req {size_t rm_len; size_t rm_infobuflen; int rm_infobufoffset; void* rm_oid; void* rm_rid; int rm_type; } ;
struct rndis_set_comp {scalar_t__ rm_status; } ;
struct hn_softc {int hn_ifp; int hn_xact; } ;


 int EIO ;
 int ENXIO ;
 int KASSERT (int,char*) ;
 int REMOTE_NDIS_SET_CMPLT ;
 int REMOTE_NDIS_SET_MSG ;
 int RNDIS_SET_REQ_INFOBUFOFFSET ;
 scalar_t__ RNDIS_STATUS_SUCCESS ;
 void* hn_rndis_rid (struct hn_softc*) ;
 struct rndis_set_comp* hn_rndis_xact_execute (struct hn_softc*,struct vmbus_xact*,void*,size_t,size_t*,int ) ;
 int if_printf (int ,char*,void*,...) ;
 int memcpy (struct rndis_set_req*,void const*,size_t) ;
 struct vmbus_xact* vmbus_xact_get (int ,size_t) ;
 int vmbus_xact_put (struct vmbus_xact*) ;
 struct rndis_set_req* vmbus_xact_req_data (struct vmbus_xact*) ;

__attribute__((used)) static int
hn_rndis_set(struct hn_softc *sc, uint32_t oid, const void *data, size_t dlen)
{
 struct rndis_set_req *req;
 const struct rndis_set_comp *comp;
 struct vmbus_xact *xact;
 size_t reqlen, comp_len;
 uint32_t rid;
 int error;

 KASSERT(dlen > 0, ("invalid dlen %zu", dlen));

 reqlen = sizeof(*req) + dlen;
 xact = vmbus_xact_get(sc->hn_xact, reqlen);
 if (xact == ((void*)0)) {
  if_printf(sc->hn_ifp, "no xact for RNDIS set 0x%08x\n", oid);
  return (ENXIO);
 }
 rid = hn_rndis_rid(sc);
 req = vmbus_xact_req_data(xact);
 req->rm_type = REMOTE_NDIS_SET_MSG;
 req->rm_len = reqlen;
 req->rm_rid = rid;
 req->rm_oid = oid;
 req->rm_infobuflen = dlen;
 req->rm_infobufoffset = RNDIS_SET_REQ_INFOBUFOFFSET;

 memcpy(req + 1, data, dlen);

 comp_len = sizeof(*comp);
 comp = hn_rndis_xact_execute(sc, xact, rid, reqlen, &comp_len,
     REMOTE_NDIS_SET_CMPLT);
 if (comp == ((void*)0)) {
  if_printf(sc->hn_ifp, "exec RNDIS set 0x%08x failed\n", oid);
  error = EIO;
  goto done;
 }

 if (comp->rm_status != RNDIS_STATUS_SUCCESS) {
  if_printf(sc->hn_ifp, "RNDIS set 0x%08x failed: "
      "status 0x%08x\n", oid, comp->rm_status);
  error = EIO;
  goto done;
 }
 error = 0;
done:
 vmbus_xact_put(xact);
 return (error);
}
