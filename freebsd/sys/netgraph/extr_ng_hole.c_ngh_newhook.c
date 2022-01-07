
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_p ;
typedef int hook_p ;
typedef int * hinfo_p ;


 int ENOMEM ;
 int M_NETGRAPH ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NG_HOOK_SET_PRIVATE (int ,int *) ;
 int * malloc (int,int ,int) ;

__attribute__((used)) static int
ngh_newhook(node_p node, hook_p hook, const char *name)
{
 hinfo_p hip;


 hip = malloc(sizeof(*hip), M_NETGRAPH, M_NOWAIT | M_ZERO);
 if (hip == ((void*)0))
  return (ENOMEM);
 NG_HOOK_SET_PRIVATE(hook, hip);
 return (0);
}
