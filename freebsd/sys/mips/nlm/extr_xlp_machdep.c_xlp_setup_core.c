
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int LSU_DEFEATURE ;
 int SCHED_DEFEATURE ;
 int nlm_mfcr (int ) ;
 int nlm_mtcr (int ,int) ;

__attribute__((used)) static void
xlp_setup_core(void)
{
 uint64_t reg;

 reg = nlm_mfcr(LSU_DEFEATURE);

 reg |= (1 << 30) | (1 << 23);





 reg |= (1ull << 31);

 reg &= ~0xeull;
 nlm_mtcr(LSU_DEFEATURE, reg);

 reg = nlm_mfcr(SCHED_DEFEATURE);

 reg |= (1 << 24);
 nlm_mtcr(SCHED_DEFEATURE, reg);
}
