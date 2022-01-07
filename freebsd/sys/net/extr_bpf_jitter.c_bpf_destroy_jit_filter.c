
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ func; int size; } ;
typedef TYPE_1__ bpf_jit_filter ;


 int M_BPFJIT ;
 scalar_t__ bpf_jit_accept_all ;
 int free (TYPE_1__*,...) ;
 int munmap (scalar_t__,int ) ;

void
bpf_destroy_jit_filter(bpf_jit_filter *filter)
{






 if (filter->func != bpf_jit_accept_all)
  munmap(filter->func, filter->size);
 free(filter);

}
