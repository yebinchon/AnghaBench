
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int * sscf; } ;
typedef int node_p ;


 int ENOMEM ;
 int M_NG_SSCFU ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_SET_PRIVATE (int ,struct priv*) ;
 int free (struct priv*,int ) ;
 struct priv* malloc (int,int ,int) ;
 int * sscfu_create (int ,int *) ;
 int sscfu_funcs ;

__attribute__((used)) static int
ng_sscfu_constructor(node_p node)
{
 struct priv *priv;

 priv = malloc(sizeof(*priv), M_NG_SSCFU, M_WAITOK | M_ZERO);

 if ((priv->sscf = sscfu_create(node, &sscfu_funcs)) == ((void*)0)) {
  free(priv, M_NG_SSCFU);
  return (ENOMEM);
 }

 NG_NODE_SET_PRIVATE(node, priv);

 return (0);
}
