
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_jit_filter {int size; int * func; } ;
struct bpf_insn {int dummy; } ;
typedef struct bpf_jit_filter bpf_jit_filter ;


 int M_BPFJIT ;
 int M_NOWAIT ;
 int * bpf_jit_accept_all ;
 int * bpf_jit_compile (struct bpf_insn*,int,int *) ;
 int free (struct bpf_jit_filter*,...) ;
 scalar_t__ malloc (int,...) ;

bpf_jit_filter *
bpf_jitter(struct bpf_insn *fp, int nins)
{
 bpf_jit_filter *filter;






 filter = (struct bpf_jit_filter *)malloc(sizeof(*filter));

 if (filter == ((void*)0))
  return (((void*)0));


 if (fp == ((void*)0) || nins == 0) {
  filter->func = bpf_jit_accept_all;
  return (filter);
 }


 if ((filter->func = bpf_jit_compile(fp, nins, &filter->size)) == ((void*)0)) {



  free(filter);

  return (((void*)0));
 }

 return (filter);
}
