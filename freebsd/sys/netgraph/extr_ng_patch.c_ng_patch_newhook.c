
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef void* hook_p ;
struct TYPE_3__ {void* out; void* in; } ;


 int EINVAL ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_PATCH_HOOK_IN ;
 int NG_PATCH_HOOK_OUT ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int ) ;

__attribute__((used)) static int
ng_patch_newhook(node_p node, hook_p hook, const char *name)
{
 const priv_p privp = NG_NODE_PRIVATE(node);

 if (strncmp(name, NG_PATCH_HOOK_IN, strlen(NG_PATCH_HOOK_IN)) == 0) {
  privp->in = hook;
 } else if (strncmp(name, NG_PATCH_HOOK_OUT,
     strlen(NG_PATCH_HOOK_OUT)) == 0) {
  privp->out = hook;
 } else
  return (EINVAL);

 return (0);
}
