
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ng_bpf_hookprog {scalar_t__ bpf_prog_len; int ifNotMatch; int ifMatch; int bpf_prog; } ;
typedef int hook_p ;
typedef TYPE_1__* hinfo_p ;
typedef int bpf_jit_filter ;
struct TYPE_3__ {struct ng_bpf_hookprog* prog; void* nomatch; void* match; int * jit_prog; } ;


 int EINVAL ;
 int ENOMEM ;
 int M_NETGRAPH_BPF ;
 int M_NOWAIT ;
 int NG_BPF_HOOKPROG_SIZE (scalar_t__) ;
 int NG_HOOK_NODE (int ) ;
 TYPE_1__* NG_HOOK_PRIVATE (int ) ;
 int bcopy (struct ng_bpf_hookprog const*,struct ng_bpf_hookprog*,int) ;
 int bpf_destroy_jit_filter (int *) ;
 int * bpf_jitter (int ,scalar_t__) ;
 scalar_t__ bpf_maxinsns ;
 int bpf_validate (int ,scalar_t__) ;
 int free (struct ng_bpf_hookprog*,int ) ;
 struct ng_bpf_hookprog* malloc (int,int ,int ) ;
 void* ng_findhook (int ,int ) ;

__attribute__((used)) static int
ng_bpf_setprog(hook_p hook, const struct ng_bpf_hookprog *hp0)
{
 const hinfo_p hip = NG_HOOK_PRIVATE(hook);
 struct ng_bpf_hookprog *hp;



 int size;


 if (hp0->bpf_prog_len > bpf_maxinsns ||
     !bpf_validate(hp0->bpf_prog, hp0->bpf_prog_len))
  return (EINVAL);


 size = NG_BPF_HOOKPROG_SIZE(hp0->bpf_prog_len);
 hp = malloc(size, M_NETGRAPH_BPF, M_NOWAIT);
 if (hp == ((void*)0))
  return (ENOMEM);
 bcopy(hp0, hp, size);





 if (hip->prog != ((void*)0))
  free(hip->prog, M_NETGRAPH_BPF);
 hip->prog = hp;







 hip->match = ng_findhook(NG_HOOK_NODE(hook), hip->prog->ifMatch);
 hip->nomatch = ng_findhook(NG_HOOK_NODE(hook), hip->prog->ifNotMatch);
 return (0);
}
