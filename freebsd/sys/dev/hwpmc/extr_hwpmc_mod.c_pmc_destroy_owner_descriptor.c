
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmc_owner {int po_mtx; TYPE_1__* po_owner; } ;
struct TYPE_2__ {int p_comm; int p_pid; } ;


 int M_PMC ;
 int OWN ;
 int PMCDBG4 (int ,int ,int,char*,struct pmc_owner*,TYPE_1__*,int ,int ) ;
 int REL ;
 int free (struct pmc_owner*,int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
pmc_destroy_owner_descriptor(struct pmc_owner *po)
{

 PMCDBG4(OWN,REL,1, "destroy-owner po=%p proc=%p (%d, %s)",
     po, po->po_owner, po->po_owner->p_pid, po->po_owner->p_comm);

 mtx_destroy(&po->po_mtx);
 free(po, M_PMC);
}
