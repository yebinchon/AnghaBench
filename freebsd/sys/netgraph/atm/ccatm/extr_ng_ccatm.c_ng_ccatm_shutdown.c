
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccnode {int data; } ;
typedef int node_p ;


 int M_NG_CCATM ;
 struct ccnode* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int cc_destroy (int ) ;
 int free (struct ccnode*,int ) ;

__attribute__((used)) static int
ng_ccatm_shutdown(node_p node)
{
 struct ccnode *priv = NG_NODE_PRIVATE(node);

 cc_destroy(priv->data);

 free(priv, M_NG_CCATM);
 NG_NODE_SET_PRIVATE(node, ((void*)0));

 NG_NODE_UNREF(node);

 return (0);
}
