
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int sscf; } ;
typedef int node_p ;


 int M_NG_SSCFU ;
 struct priv* NG_NODE_PRIVATE (int ) ;
 int NG_NODE_SET_PRIVATE (int ,int *) ;
 int NG_NODE_UNREF (int ) ;
 int free (struct priv*,int ) ;
 int sscfu_destroy (int ) ;

__attribute__((used)) static int
ng_sscfu_shutdown(node_p node)
{
 struct priv *priv = NG_NODE_PRIVATE(node);

 sscfu_destroy(priv->sscf);

 free(priv, M_NG_SSCFU);
 NG_NODE_SET_PRIVATE(node, ((void*)0));

 NG_NODE_UNREF(node);

 return (0);
}
