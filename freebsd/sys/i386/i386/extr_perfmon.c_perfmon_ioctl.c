
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_long ;
struct thread {int dummy; } ;
struct pmc_tstamp {int pmct_rate; int pmct_value; } ;
struct pmc_data {int pmcd_value; int pmcd_num; } ;
struct pmc {int pmc_num; int pmc_val; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int ENOTTY ;
 int EPERM ;
 int FWRITE ;







 int atomic_load_acq_64 (int *) ;
 int perfmon_get (int,int *) ;
 int perfmon_read (int ,int *) ;
 int perfmon_reset (int) ;
 int perfmon_setup (int,int ) ;
 int perfmon_start (int) ;
 int perfmon_stop (int) ;
 int rdtsc () ;
 int tsc_freq ;
 int writerpmc ;

__attribute__((used)) static int
perfmon_ioctl(struct cdev *dev, u_long cmd, caddr_t param, int flags, struct thread *td)
{
 struct pmc *pmc;
 struct pmc_data *pmcd;
 struct pmc_tstamp *pmct;
 uint64_t freq;
 int *ip;
 int rv;

 switch(cmd) {
 case 131:
  if (!(flags & FWRITE))
   return EPERM;
  pmc = (struct pmc *)param;

  rv = perfmon_setup(pmc->pmc_num, pmc->pmc_val);
  if (!rv) {
   writerpmc |= (1 << pmc->pmc_num);
  }
  break;

 case 134:
  pmc = (struct pmc *)param;
  rv = perfmon_get(pmc->pmc_num, &pmc->pmc_val);
  break;

 case 130:
  if (!(flags & FWRITE))
   return EPERM;

  ip = (int *)param;
  rv = perfmon_start(*ip);
  break;

 case 129:
  if (!(flags & FWRITE))
   return EPERM;

  ip = (int *)param;
  rv = perfmon_stop(*ip);
  break;

 case 132:
  if (!(flags & FWRITE))
   return EPERM;

  ip = (int *)param;
  rv = perfmon_reset(*ip);
  break;

 case 133:
  pmcd = (struct pmc_data *)param;
  rv = perfmon_read(pmcd->pmcd_num, &pmcd->pmcd_value);
  break;

 case 128:
  freq = atomic_load_acq_64(&tsc_freq);
  if (freq == 0) {
   rv = ENOTTY;
   break;
  }
  pmct = (struct pmc_tstamp *)param;

  pmct->pmct_rate = freq / 1000000;
  pmct->pmct_value = rdtsc();
  rv = 0;
  break;
 default:
  rv = ENOTTY;
 }

 return rv;
}
