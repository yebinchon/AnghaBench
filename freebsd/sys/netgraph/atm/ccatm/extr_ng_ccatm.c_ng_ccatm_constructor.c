
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccnode {int * data; int node; } ;
typedef int node_p ;


 int ENOMEM ;
 int M_NG_CCATM ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_SET_PRIVATE (int ,struct ccnode*) ;
 int * cc_create (int *) ;
 int cc_funcs ;
 int free (struct ccnode*,int ) ;
 struct ccnode* malloc (int,int ,int) ;

__attribute__((used)) static int
ng_ccatm_constructor(node_p node)
{
 struct ccnode *priv;

 priv = malloc(sizeof(*priv), M_NG_CCATM, M_WAITOK | M_ZERO);

 priv->node = node;
 priv->data = cc_create(&cc_funcs);
 if (priv->data == ((void*)0)) {
  free(priv, M_NG_CCATM);
  return (ENOMEM);
 }

 NG_NODE_SET_PRIVATE(node, priv);

 return (0);
}
