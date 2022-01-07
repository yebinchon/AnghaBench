
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_owner {int po_flags; int po_pmcs; } ;


 scalar_t__ LIST_EMPTY (int *) ;
 int OMR ;
 int OWN ;
 int PMCDBG1 (int ,int ,int,char*,struct pmc_owner*) ;
 int PMC_PO_OWNS_LOGFILE ;
 int pmc_destroy_owner_descriptor (struct pmc_owner*) ;
 int pmc_remove_owner (struct pmc_owner*) ;

__attribute__((used)) static void
pmc_maybe_remove_owner(struct pmc_owner *po)
{

 PMCDBG1(OWN,OMR,1, "maybe-remove-owner po=%p", po);







 if (LIST_EMPTY(&po->po_pmcs) &&
     ((po->po_flags & PMC_PO_OWNS_LOGFILE) == 0)) {
  pmc_remove_owner(po);
  pmc_destroy_owner_descriptor(po);
 }
}
