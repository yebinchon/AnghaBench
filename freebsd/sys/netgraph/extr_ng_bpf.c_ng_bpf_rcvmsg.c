
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int typecookie; int const cmd; int arglen; } ;
struct ng_mesg {char* data; TYPE_1__ header; } ;
struct ng_bpf_hookstat {char* thisHook; int bpf_prog_len; } ;
struct ng_bpf_hookprog {char* thisHook; int bpf_prog_len; } ;
typedef int node_p ;
typedef int item_p ;
typedef int * hook_p ;
typedef TYPE_2__* hinfo_p ;
struct TYPE_4__ {struct ng_bpf_hookstat stats; struct ng_bpf_hookstat* prog; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int ERROUT (int) ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;






 int NG_BPF_HOOKPROG_SIZE (int ) ;
 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_HOOK_PRIVATE (int *) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int bcopy (struct ng_bpf_hookstat*,char*,int) ;
 int bzero (struct ng_bpf_hookstat*,int) ;
 int ng_bpf_setprog (int *,struct ng_bpf_hookstat* const) ;
 int * ng_findhook (int ,char*) ;

__attribute__((used)) static int
ng_bpf_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 struct ng_mesg *msg;
 struct ng_mesg *resp = ((void*)0);
 int error = 0;

 NGI_GET_MSG(item, msg);
 switch (msg->header.typecookie) {
 case 132:
  switch (msg->header.cmd) {
  case 128:
      {
   struct ng_bpf_hookprog *const
       hp = (struct ng_bpf_hookprog *)msg->data;
   hook_p hook;


   if (msg->header.arglen < sizeof(*hp)
       || msg->header.arglen
         != NG_BPF_HOOKPROG_SIZE(hp->bpf_prog_len))
    ERROUT(EINVAL);


   if ((hook = ng_findhook(node, hp->thisHook)) == ((void*)0))
    ERROUT(ENOENT);


   if ((error = ng_bpf_setprog(hook, hp)) != 0)
    ERROUT(error);
   break;
      }

  case 130:
      {
   struct ng_bpf_hookprog *hp;
   hook_p hook;


   if (msg->header.arglen == 0)
    ERROUT(EINVAL);
   msg->data[msg->header.arglen - 1] = '\0';


   if ((hook = ng_findhook(node, msg->data)) == ((void*)0))
    ERROUT(ENOENT);


   hp = ((hinfo_p)NG_HOOK_PRIVATE(hook))->prog;
   NG_MKRESPONSE(resp, msg,
       NG_BPF_HOOKPROG_SIZE(hp->bpf_prog_len), M_NOWAIT);
   if (resp == ((void*)0))
    ERROUT(ENOMEM);
   bcopy(hp, resp->data,
      NG_BPF_HOOKPROG_SIZE(hp->bpf_prog_len));
   break;
      }

  case 129:
  case 133:
  case 131:
      {
   struct ng_bpf_hookstat *stats;
   hook_p hook;


   if (msg->header.arglen == 0)
    ERROUT(EINVAL);
   msg->data[msg->header.arglen - 1] = '\0';


   if ((hook = ng_findhook(node, msg->data)) == ((void*)0))
    ERROUT(ENOENT);
   stats = &((hinfo_p)NG_HOOK_PRIVATE(hook))->stats;


   if (msg->header.cmd != 133) {
    NG_MKRESPONSE(resp,
        msg, sizeof(*stats), M_NOWAIT);
    if (resp == ((void*)0))
     ERROUT(ENOMEM);
    bcopy(stats, resp->data, sizeof(*stats));
   }


   if (msg->header.cmd != 129)
    bzero(stats, sizeof(*stats));
   break;
      }

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
