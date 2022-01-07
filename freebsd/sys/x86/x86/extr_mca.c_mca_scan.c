
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mca_record {int mr_status; } ;
typedef enum scan_mode { ____Placeholder_scan_mode } scan_mode ;


 int CMCI ;
 int MCE ;
 int MCG_CAP_COUNT ;
 int MC_STATUS_OVER ;
 int MC_STATUS_PCC ;
 int MC_STATUS_UC ;
 int MSR_MCG_CAP ;
 int PCPU_GET (int ) ;
 int amd_thresholding_update (int,int,int) ;
 int * cmc_state ;
 int cmci_mask ;
 int cmci_update (int,int,int,struct mca_record*) ;
 int mca_check_status (int,struct mca_record*) ;
 int mca_lock ;
 int mca_log (struct mca_record*) ;
 int mca_record_entry (int,struct mca_record*) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int rdmsr (int ) ;

__attribute__((used)) static int
mca_scan(enum scan_mode mode, int *recoverablep)
{
 struct mca_record rec;
 uint64_t mcg_cap, ucmask;
 int count, i, recoverable, valid;

 count = 0;
 recoverable = 1;
 ucmask = MC_STATUS_UC | MC_STATUS_PCC;


 if (mode == MCE)
  ucmask |= MC_STATUS_OVER;
 mcg_cap = rdmsr(MSR_MCG_CAP);
 for (i = 0; i < (mcg_cap & MCG_CAP_COUNT); i++) {
  valid = mca_check_status(i, &rec);
  if (valid) {
   count++;
   if (rec.mr_status & ucmask) {
    recoverable = 0;
    mtx_lock_spin(&mca_lock);
    mca_log(&rec);
    mtx_unlock_spin(&mca_lock);
   }
   mca_record_entry(mode, &rec);
  }
 }
 if (recoverablep != ((void*)0))
  *recoverablep = recoverable;
 return (count);
}
