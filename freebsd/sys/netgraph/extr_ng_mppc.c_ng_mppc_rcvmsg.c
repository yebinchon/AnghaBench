
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ng_mppc_config {int bits; int * startkey; int enable; } ;
struct ng_mppc_dir {int flushed; int cc; int key; int rc4; int * history; struct ng_mppc_config cfg; } ;
struct TYPE_4__ {int typecookie; int const cmd; int arglen; } ;
struct ng_mesg {TYPE_1__ header; scalar_t__ data; } ;
typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_5__ {int ctrlnode; struct ng_mppc_dir recv; struct ng_mppc_dir xmit; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPROTONOSUPPORT ;
 int ERROUT (int) ;
 int KEYLEN (int) ;
 int MPPC_BIT ;
 int MPPC_InitCompressionHistory (int *) ;
 int MPPC_InitDecompressionHistory (int *) ;
 int MPPC_SizeOfCompressionHistory () ;
 int MPPC_SizeOfDecompressionHistory () ;
 int MPPC_VALID_BITS ;
 int MPPE_40 ;
 int MPPE_56 ;
 int MPPE_BITS ;
 int M_NETGRAPH_MPPC ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;
 int NGI_RETADDR (int ) ;




 int NG_FREE_MSG (struct ng_mesg*) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int bcopy (int *,int ,int const) ;
 int free (int *,int ) ;
 int * malloc (int ,int ,int ) ;
 int ng_mppc_getkey (int *,int ,int const) ;
 int ng_mppc_reset_req (int ) ;
 int ng_mppe_weakenkey ;
 int rc4_init (int *,int ,int const) ;

__attribute__((used)) static int
ng_mppc_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ng_mesg *resp = ((void*)0);
 int error = 0;
 struct ng_mesg *msg;

 NGI_GET_MSG(item, msg);
 switch (msg->header.typecookie) {
 case 129:
  switch (msg->header.cmd) {
  case 131:
  case 130:
      {
   struct ng_mppc_config *const cfg
       = (struct ng_mppc_config *)msg->data;
   const int isComp =
       msg->header.cmd == 131;
   struct ng_mppc_dir *const d = isComp ?
       &priv->xmit : &priv->recv;


   if (msg->header.arglen != sizeof(*cfg))
    ERROUT(EINVAL);
   if (cfg->enable) {
    if ((cfg->bits & ~MPPC_VALID_BITS) != 0)
     ERROUT(EINVAL);

    if ((cfg->bits & MPPC_BIT) != 0)
     ERROUT(EPROTONOSUPPORT);


    if ((cfg->bits & MPPE_BITS) != 0)
     ERROUT(EPROTONOSUPPORT);

   } else
    cfg->bits = 0;


   if (!isComp)
    priv->ctrlnode = NGI_RETADDR(item);


   d->cfg = *cfg;
   d->cc = 0;
   d->flushed = 0;
   break;
      }

  case 128:
   ng_mppc_reset_req(node);
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
done:
 NG_RESPOND_MSG(error, node, item, resp);
 NG_FREE_MSG(msg);
 return (error);
}
