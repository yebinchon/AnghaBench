
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct ng_tee_stats {int left2right; int right2left; int left; int right; } ;
struct TYPE_11__ {int typecookie; int const cmd; } ;
struct ng_mesg {TYPE_1__ header; scalar_t__ data; } ;
typedef TYPE_7__* sc_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
typedef TYPE_8__* hi_p ;
struct TYPE_18__ {TYPE_6__* dest; } ;
struct TYPE_15__ {int hook; int stats; } ;
struct TYPE_14__ {int hook; int stats; } ;
struct TYPE_13__ {int stats; } ;
struct TYPE_12__ {int stats; } ;
struct TYPE_17__ {TYPE_5__ right; TYPE_4__ left; TYPE_3__ left2right; TYPE_2__ right2left; } ;
struct TYPE_16__ {int hook; } ;
typedef struct ng_mesg* NGI_MSG ;


 int EINVAL ;
 int ENOMEM ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;





 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_FWD_ITEM_HOOK (int,struct ng_mesg*,int ) ;
 TYPE_8__* NG_HOOK_PRIVATE (int ) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 TYPE_7__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int bcopy (int *,int *,int) ;
 int bzero (int *,int) ;

__attribute__((used)) static int
ng_tee_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 const sc_p sc = NG_NODE_PRIVATE(node);
 struct ng_mesg *resp = ((void*)0);
 int error = 0;
 struct ng_mesg *msg;

 NGI_GET_MSG(item, msg);
 switch (msg->header.typecookie) {
 case 130:
  switch (msg->header.cmd) {
  case 128:
  case 131:
  case 129:
                    {
   struct ng_tee_stats *stats;

                        if (msg->header.cmd != 131) {
                                NG_MKRESPONSE(resp, msg,
                                    sizeof(*stats), M_NOWAIT);
    if (resp == ((void*)0)) {
     error = ENOMEM;
     goto done;
    }
    stats = (struct ng_tee_stats *)resp->data;
    bcopy(&sc->right.stats, &stats->right,
        sizeof(stats->right));
    bcopy(&sc->left.stats, &stats->left,
        sizeof(stats->left));
    bcopy(&sc->right2left.stats, &stats->right2left,
        sizeof(stats->right2left));
    bcopy(&sc->left2right.stats, &stats->left2right,
        sizeof(stats->left2right));
                        }
                        if (msg->header.cmd != 128) {
    bzero(&sc->right.stats,
        sizeof(sc->right.stats));
    bzero(&sc->left.stats,
        sizeof(sc->left.stats));
    bzero(&sc->right2left.stats,
        sizeof(sc->right2left.stats));
    bzero(&sc->left2right.stats,
        sizeof(sc->left2right.stats));
   }
                        break;
      }
  default:
   error = EINVAL;
   break;
  }
  break;
 case 132:
  if (lasthook == sc->left.hook || lasthook == sc->right.hook) {
   hi_p const hinfo = NG_HOOK_PRIVATE(lasthook);
   if (hinfo && hinfo->dest) {
    NGI_MSG(item) = msg;
    NG_FWD_ITEM_HOOK(error, item, hinfo->dest->hook);
    return (error);
   }
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
