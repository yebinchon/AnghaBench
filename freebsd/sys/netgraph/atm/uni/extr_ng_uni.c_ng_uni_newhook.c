
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {void* upper; void* lower; } ;
typedef int node_p ;
typedef void* hook_p ;


 int EINVAL ;
 int NG_HOOK_SET_RCVDATA (void*,int ) ;
 struct priv* NG_NODE_PRIVATE (int ) ;
 int ng_uni_rcvupper ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
ng_uni_newhook(node_p node, hook_p hook, const char *name)
{
 struct priv *priv = NG_NODE_PRIVATE(node);

 if (strcmp(name, "lower") == 0) {
  priv->lower = hook;
 } else if(strcmp(name, "upper") == 0) {
  priv->upper = hook;
  NG_HOOK_SET_RCVDATA(hook, ng_uni_rcvupper);
 } else
  return EINVAL;

 return 0;
}
