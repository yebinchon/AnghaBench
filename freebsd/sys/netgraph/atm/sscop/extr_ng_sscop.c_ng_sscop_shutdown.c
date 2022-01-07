
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int sscop; } ;
typedef int node_p ;


 int M_NG_SSCOP ;
 struct priv* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int free (struct priv*,int ) ;
 int sscop_destroy (int ) ;

__attribute__((used)) static int
ng_sscop_shutdown(node_p node)
{
 struct priv *priv = NG_NODE_PRIVATE(node);

 sscop_destroy(priv->sscop);

 free(priv, M_NG_SSCOP);
 NG_NODE_SET_PRIVATE(node, ((void*)0));

 NG_NODE_UNREF(node);

 return (0);
}
