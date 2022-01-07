
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int * uni; } ;
typedef int node_p ;


 int ENOMEM ;
 int M_NG_UNI ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_FORCE_WRITER (int ) ;
 int NG_NODE_SET_PRIVATE (int ,struct priv*) ;
 int free (struct priv*,int ) ;
 struct priv* malloc (int,int ,int) ;
 int * uni_create (int ,int *) ;
 int uni_funcs ;

__attribute__((used)) static int
ng_uni_constructor(node_p node)
{
 struct priv *priv;

 priv = malloc(sizeof(*priv), M_NG_UNI, M_WAITOK | M_ZERO);

 if ((priv->uni = uni_create(node, &uni_funcs)) == ((void*)0)) {
  free(priv, M_NG_UNI);
  return (ENOMEM);
 }

 NG_NODE_SET_PRIVATE(node, priv);
 NG_NODE_FORCE_WRITER(node);

 return (0);
}
