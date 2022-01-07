
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int typecookie; int const cmd; int arglen; } ;
struct ng_mesg {TYPE_1__ header; scalar_t__ data; } ;
struct ng_hole_hookstat {int dummy; } ;
typedef int node_p ;
typedef int item_p ;
typedef int * hook_p ;
typedef TYPE_2__* hinfo_p ;
struct TYPE_4__ {struct ng_hole_hookstat stats; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;




 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_HOOKSIZ ;
 int NG_HOOK_PRIVATE (int *) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int bcopy (struct ng_hole_hookstat*,scalar_t__,int) ;
 int bzero (struct ng_hole_hookstat*,int) ;
 int * ng_findhook (int ,char*) ;

__attribute__((used)) static int
ngh_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 struct ng_mesg *msg;
 struct ng_mesg *resp = ((void*)0);
 int error = 0;
 struct ng_hole_hookstat *stats;
 hook_p hook;

 NGI_GET_MSG(item, msg);
 switch (msg->header.typecookie) {
 case 130:
  switch (msg->header.cmd) {
  case 128:
  case 131:
  case 129:

   if (msg->header.arglen != NG_HOOKSIZ) {
    error = EINVAL;
    break;
   }

   hook = ng_findhook(node, (char *)msg->data);
   if (hook == ((void*)0)) {
    error = ENOENT;
    break;
   }
   stats = &((hinfo_p)NG_HOOK_PRIVATE(hook))->stats;

   if (msg->header.cmd != 131) {
    NG_MKRESPONSE(resp, msg, sizeof(*stats),
        M_NOWAIT);
    if (resp == ((void*)0)) {
     error = ENOMEM;
     break;
    }
    bcopy(stats, resp->data, sizeof(*stats));
   }

   if (msg->header.cmd != 128)
    bzero(stats, sizeof(*stats));
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
