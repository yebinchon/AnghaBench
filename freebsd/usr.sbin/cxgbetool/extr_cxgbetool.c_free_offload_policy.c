
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t4_offload_policy {int nrules; TYPE_1__* rule; } ;
struct TYPE_2__ {int bpf_prog; } ;


 int free (TYPE_1__*) ;
 int pcap_freecode (int *) ;

__attribute__((used)) static void
free_offload_policy(struct t4_offload_policy *op)
{
 int i;

 for (i = 0; i < op->nrules; i++) {




  pcap_freecode(&op->rule[i].bpf_prog);
 }
 free(op->rule);
 op->nrules = 0;
 op->rule = ((void*)0);
}
