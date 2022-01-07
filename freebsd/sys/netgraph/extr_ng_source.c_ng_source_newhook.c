
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int node_p ;
typedef void* hook_p ;
struct TYPE_3__ {int stats; int * output_ifp; void* output; void* input; } ;


 int EINVAL ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_SOURCE_HOOK_INPUT ;
 int NG_SOURCE_HOOK_OUTPUT ;
 int bzero (int *,int) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
ng_source_newhook(node_p node, hook_p hook, const char *name)
{
 sc_p sc = NG_NODE_PRIVATE(node);

 if (strcmp(name, NG_SOURCE_HOOK_INPUT) == 0) {
  sc->input = hook;
 } else if (strcmp(name, NG_SOURCE_HOOK_OUTPUT) == 0) {
  sc->output = hook;
  sc->output_ifp = ((void*)0);
  bzero(&sc->stats, sizeof(sc->stats));
 } else
  return (EINVAL);

 return (0);
}
