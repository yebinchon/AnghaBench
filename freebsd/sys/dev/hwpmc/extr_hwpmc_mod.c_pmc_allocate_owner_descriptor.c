
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct proc {int p_comm; int p_pid; } ;
struct pmc_ownerhash {int dummy; } ;
struct pmc_owner {int po_mtx; int po_logbuffers; struct proc* po_owner; } ;


 int ALL ;
 int LIST_INSERT_HEAD (struct pmc_ownerhash*,struct pmc_owner*,int ) ;
 int MTX_SPIN ;
 int M_PMC ;
 int M_WAITOK ;
 int M_ZERO ;
 int OWN ;
 int PMCDBG4 (int ,int ,int,char*,struct proc*,int ,int ,struct pmc_owner*) ;
 size_t PMC_HASH_PTR (struct proc*,int ) ;
 int TAILQ_INIT (int *) ;
 struct pmc_owner* malloc (int,int ,int) ;
 int mtx_init (int *,char*,char*,int ) ;
 struct pmc_ownerhash* pmc_ownerhash ;
 int pmc_ownerhashmask ;
 int po_next ;

__attribute__((used)) static struct pmc_owner *
pmc_allocate_owner_descriptor(struct proc *p)
{
 uint32_t hindex;
 struct pmc_owner *po;
 struct pmc_ownerhash *poh;

 hindex = PMC_HASH_PTR(p, pmc_ownerhashmask);
 poh = &pmc_ownerhash[hindex];


 po = malloc(sizeof(struct pmc_owner), M_PMC, M_WAITOK|M_ZERO);
 po->po_owner = p;
 LIST_INSERT_HEAD(poh, po, po_next);

 TAILQ_INIT(&po->po_logbuffers);
 mtx_init(&po->po_mtx, "pmc-owner-mtx", "pmc-per-proc", MTX_SPIN);

 PMCDBG4(OWN,ALL,1, "allocate-owner proc=%p (%d, %s) pmc-owner=%p",
     p, p->p_pid, p->p_comm, po);

 return po;
}
