
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int * sscop; } ;
typedef int node_p ;


 int ENOMEM ;
 int M_NG_SSCOP ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_FORCE_WRITER (int ) ;
 int NG_NODE_SET_PRIVATE (int ,struct priv*) ;
 int free (struct priv*,int ) ;
 struct priv* malloc (int,int ,int) ;
 int * sscop_create (int ,int *) ;
 int sscop_funcs ;

__attribute__((used)) static int
ng_sscop_constructor(node_p node)
{
 struct priv *p;

 p = malloc(sizeof(*p), M_NG_SSCOP, M_WAITOK | M_ZERO);

 if ((p->sscop = sscop_create(node, &sscop_funcs)) == ((void*)0)) {
  free(p, M_NG_SSCOP);
  return (ENOMEM);
 }
 NG_NODE_SET_PRIVATE(node, p);



 NG_NODE_FORCE_WRITER(node);

 return (0);
}
