
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int node_p ;
typedef int hook_p ;
typedef TYPE_2__* hinfo_p ;
struct TYPE_7__ {TYPE_1__* prog; int hook; } ;
struct TYPE_6__ {int thisHook; } ;


 int ENOMEM ;
 int M_NETGRAPH_BPF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NG_HOOK_SET_PRIVATE (int ,TYPE_2__*) ;
 int NG_NODE_FOREACH_HOOK (int ,int ,int ,int ) ;
 int free (TYPE_2__*,int ) ;
 TYPE_2__* malloc (int,int ,int) ;
 int ng_bpf_addrefs ;
 int ng_bpf_default_prog ;
 int ng_bpf_setprog (int ,int *) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int
ng_bpf_newhook(node_p node, hook_p hook, const char *name)
{
 hinfo_p hip;
 hook_p tmp;
 int error;


 hip = malloc(sizeof(*hip), M_NETGRAPH_BPF, M_NOWAIT | M_ZERO);
 if (hip == ((void*)0))
  return (ENOMEM);
 hip->hook = hook;
 NG_HOOK_SET_PRIVATE(hook, hip);


 NG_NODE_FOREACH_HOOK(node, ng_bpf_addrefs, hook, tmp);


 if ((error = ng_bpf_setprog(hook, &ng_bpf_default_prog)) != 0) {
  free(hip, M_NETGRAPH_BPF);
  NG_HOOK_SET_PRIVATE(hook, ((void*)0));
  return (error);
 }


 strlcpy(hip->prog->thisHook, name, sizeof(hip->prog->thisHook));
 return (0);
}
