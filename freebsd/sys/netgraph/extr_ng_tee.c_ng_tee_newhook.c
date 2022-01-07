
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int node_p ;
typedef int hook_p ;
typedef TYPE_2__* hi_p ;
struct TYPE_6__ {int stats; int hook; struct TYPE_6__* dest; struct TYPE_6__* dup; } ;
struct TYPE_5__ {TYPE_2__ left; TYPE_2__ left2right; TYPE_2__ right; TYPE_2__ right2left; } ;


 int EINVAL ;
 int NG_HOOK_SET_PRIVATE (int ,TYPE_2__*) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_TEE_HOOK_LEFT ;
 int NG_TEE_HOOK_LEFT2RIGHT ;
 int NG_TEE_HOOK_RIGHT ;
 int NG_TEE_HOOK_RIGHT2LEFT ;
 int bzero (int *,int) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
ng_tee_newhook(node_p node, hook_p hook, const char *name)
{
 sc_p privdata = NG_NODE_PRIVATE(node);
 hi_p hinfo;


 if (strcmp(name, NG_TEE_HOOK_RIGHT) == 0) {
  hinfo = &privdata->right;
  if (privdata->left.dest)
   privdata->left.dup = privdata->left.dest;
  privdata->left.dest = hinfo;
  privdata->right2left.dest = hinfo;
 } else if (strcmp(name, NG_TEE_HOOK_LEFT) == 0) {
  hinfo = &privdata->left;
  if (privdata->right.dest)
   privdata->right.dup = privdata->right.dest;
  privdata->right.dest = hinfo;
  privdata->left2right.dest = hinfo;
 } else if (strcmp(name, NG_TEE_HOOK_RIGHT2LEFT) == 0) {
  hinfo = &privdata->right2left;
  if (privdata->right.dest)
   privdata->right.dup = hinfo;
  else
   privdata->right.dest = hinfo;
 } else if (strcmp(name, NG_TEE_HOOK_LEFT2RIGHT) == 0) {
  hinfo = &privdata->left2right;
  if (privdata->left.dest)
   privdata->left.dup = hinfo;
  else
   privdata->left.dest = hinfo;
 } else
  return (EINVAL);
 hinfo->hook = hook;
 bzero(&hinfo->stats, sizeof(hinfo->stats));
 NG_HOOK_SET_PRIVATE(hook, hinfo);
 return (0);
}
