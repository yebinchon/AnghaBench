
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
 int NG_CHECKSUM_HOOK_IN ;
 int NG_CHECKSUM_HOOK_OUT ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int ) ;

__attribute__((used)) static int
ng_checksum_newhook(node_p node, hook_p hook, const char *name)
{
 const priv_p priv = NG_NODE_PRIVATE(node);

 if (strncmp(name, NG_CHECKSUM_HOOK_IN, strlen(NG_CHECKSUM_HOOK_IN)) == 0) {
  priv->in = hook;
 } else if (strncmp(name, NG_CHECKSUM_HOOK_OUT, strlen(NG_CHECKSUM_HOOK_OUT)) == 0) {
  priv->out = hook;
 } else
  return (EINVAL);

 return (0);
}
