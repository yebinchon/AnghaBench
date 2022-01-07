
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct udbp_softc {int sc_mtx; int sc_packets_out; int sc_packets_in; } ;
struct ngudbpstat {int packets_out; int packets_in; } ;
struct TYPE_2__ {int typecookie; int arglen; int cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;


 int DPRINTF (char*,int ) ;
 int EINVAL ;
 int ENOMEM ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;



 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 struct udbp_softc* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
ng_udbp_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 struct udbp_softc *sc = NG_NODE_PRIVATE(node);
 struct ng_mesg *resp = ((void*)0);
 int error = 0;
 struct ng_mesg *msg;

 NGI_GET_MSG(item, msg);

 switch (msg->header.typecookie) {
 case 130:
  switch (msg->header.cmd) {
  case 129:
   {
    struct ngudbpstat *stats;

    NG_MKRESPONSE(resp, msg, sizeof(*stats), M_NOWAIT);
    if (!resp) {
     error = ENOMEM;
     break;
    }
    stats = (struct ngudbpstat *)resp->data;
    mtx_lock(&sc->sc_mtx);
    stats->packets_in = sc->sc_packets_in;
    stats->packets_out = sc->sc_packets_out;
    mtx_unlock(&sc->sc_mtx);
    break;
   }
  case 128:
   if (msg->header.arglen != sizeof(uint32_t)) {
    error = EINVAL;
    break;
   }
   DPRINTF("flags = 0x%08x\n",
       *((uint32_t *)msg->data));
   break;
  default:
   error = EINVAL;
   break;
  }
  break;
 default:
  error = EINVAL;
  break;
 }


 NG_RESPOND_MSG(error, node, item, resp);
 NG_FREE_MSG(msg);
 return (error);
}
