
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mca_record {int mr_status; } ;
struct cmc_state {int last_intr; int max_threshold; } ;
typedef enum scan_mode { ____Placeholder_scan_mode } scan_mode ;


 int CMCI ;
 int MC_CTL2_THRESHOLD ;
 int MC_STATUS_COR_COUNT ;
 int MSR_MC_CTL2 (int) ;
 size_t PCPU_GET (int ) ;
 struct cmc_state** cmc_state ;
 int cpuid ;
 int rdmsr (int ) ;
 int time_uptime ;
 int update_threshold (int,int,int ,int,int,int ) ;
 int wrmsr (int ,int) ;

__attribute__((used)) static void
cmci_update(enum scan_mode mode, int bank, int valid, struct mca_record *rec)
{
 struct cmc_state *cc;
 uint64_t ctl;
 int cur_threshold, new_threshold;
 int count;


 cc = &cmc_state[PCPU_GET(cpuid)][bank];
 ctl = rdmsr(MSR_MC_CTL2(bank));
 count = (rec->mr_status & MC_STATUS_COR_COUNT) >> 38;
 cur_threshold = ctl & MC_CTL2_THRESHOLD;

 new_threshold = update_threshold(mode, valid, cc->last_intr, count,
     cur_threshold, cc->max_threshold);

 if (mode == CMCI && valid)
  cc->last_intr = time_uptime;
 if (new_threshold != cur_threshold) {
  ctl &= ~MC_CTL2_THRESHOLD;
  ctl |= new_threshold;
  wrmsr(MSR_MC_CTL2(bank), ctl);
 }
}
