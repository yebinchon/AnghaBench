
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef int * hook_p ;
struct TYPE_3__ {int * hook; } ;


 int DBG ;
 int EISCONN ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;

__attribute__((used)) static int
ng_device_newhook(node_p node, hook_p hook, const char *name)
{
 priv_p priv = NG_NODE_PRIVATE(node);

 DBG;


 if (priv->hook != ((void*)0))
  return (EISCONN);

 priv->hook = hook;

 return(0);
}
