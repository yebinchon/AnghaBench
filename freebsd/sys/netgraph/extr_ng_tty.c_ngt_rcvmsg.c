
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct proc {int p_flag; } ;
struct TYPE_5__ {int typecookie; int arglen; int cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
typedef TYPE_2__* sc_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_6__ {int hotchar; int * tp; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int ERROUT (int ) ;
 int ESRCH ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;




 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int PRELE (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_WEXIT ;
 int _PHOLD (struct proc*) ;
 int ngt_hook ;
 struct proc* pfind (int) ;
 int ttyhook_register (int **,struct proc*,int,int *,TYPE_2__* const) ;

__attribute__((used)) static int
ngt_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 struct proc *p;
 const sc_p sc = NG_NODE_PRIVATE(node);
 struct ng_mesg *msg, *resp = ((void*)0);
 int error = 0;

 NGI_GET_MSG(item, msg);
 switch (msg->header.typecookie) {
 case 131:
  switch (msg->header.cmd) {
  case 128:
   if (sc->tp != ((void*)0))
    return (EBUSY);

   p = pfind(((int *)msg->data)[0]);
   if (p == ((void*)0) || (p->p_flag & P_WEXIT))
    return (ESRCH);
   _PHOLD(p);
   PROC_UNLOCK(p);
   error = ttyhook_register(&sc->tp, p, ((int *)msg->data)[1],
       &ngt_hook, sc);
   PRELE(p);
   if (error != 0)
    return (error);
   break;
  case 129:
      {
   int hotchar;

   if (msg->header.arglen != sizeof(int))
    ERROUT(EINVAL);
   hotchar = *((int *) msg->data);
   if (hotchar != (u_char) hotchar && hotchar != -1)
    ERROUT(EINVAL);
   sc->hotchar = hotchar;
   break;
      }
  case 130:
   NG_MKRESPONSE(resp, msg, sizeof(int), M_NOWAIT);
   if (!resp)
    ERROUT(ENOMEM);

   *((int *) resp->data) = sc->hotchar;
   break;
  default:
   ERROUT(EINVAL);
  }
  break;
 default:
  ERROUT(EINVAL);
 }
done:
 NG_RESPOND_MSG(error, node, item, resp);
 NG_FREE_MSG(msg);
 return (error);
}
