
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int uni; } ;
typedef int node_p ;


 int M_NG_UNI ;
 struct priv* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int free (struct priv*,int ) ;
 int uni_destroy (int ) ;

__attribute__((used)) static int
ng_uni_shutdown(node_p node)
{
 struct priv *priv = NG_NODE_PRIVATE(node);

 uni_destroy(priv->uni);

 free(priv, M_NG_UNI);
 NG_NODE_SET_PRIVATE(node, ((void*)0));

 NG_NODE_UNREF(node);

 return (0);
}
