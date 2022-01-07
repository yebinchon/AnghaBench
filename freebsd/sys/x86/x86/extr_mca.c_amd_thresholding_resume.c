
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_et_state {int cur_threshold; scalar_t__ last_intr; } ;


 int KASSERT (int,char*) ;
 size_t PCPU_GET (int ) ;
 struct amd_et_state** amd_et_state ;
 int amd_thresholding_start (struct amd_et_state*,int) ;
 int cmci_mask ;
 int cpuid ;
 int mca_banks ;

__attribute__((used)) static void
amd_thresholding_resume(int i)
{
 struct amd_et_state *cc;

 KASSERT(i < mca_banks, ("CPU %d has more MC banks", PCPU_GET(cpuid)));


 if (!(PCPU_GET(cmci_mask) & 1 << i))
  return;

 cc = &amd_et_state[PCPU_GET(cpuid)][i];
 cc->last_intr = 0;
 cc->cur_threshold = 1;
 amd_thresholding_start(cc, i);
}
