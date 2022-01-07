
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timex {int modes; int status; scalar_t__ constant; scalar_t__ shift; long long freq; int offset; int precision; long tolerance; int ppsfreq; int jitter; int stbcnt; int jitcnt; int errcnt; int calcnt; int stabil; int esterror; int maxerror; } ;
struct thread {int* td_retval; } ;
struct ntp_adjtime_args {scalar_t__ tp; } ;
typedef int ntv ;
typedef int caddr_t ;


 int L_GINT (long long) ;
 int L_LINT (long long,long) ;
 long MAXFREQ ;
 scalar_t__ MAXTC ;
 int MOD_CLKA ;
 int MOD_CLKB ;
 int MOD_ESTERROR ;
 int MOD_FREQUENCY ;
 int MOD_MAXERROR ;
 int MOD_MICRO ;
 int MOD_NANO ;
 int MOD_OFFSET ;
 int MOD_PPSMAX ;
 int MOD_STATUS ;
 int MOD_TAI ;
 int MOD_TIMECONST ;
 int NTP_LOCK () ;
 int NTP_UNLOCK () ;
 scalar_t__ PPS_FAVG ;
 scalar_t__ PPS_FAVGMAX ;
 int PRIV_NTP_ADJTIME ;
 long SCALE_PPM ;
 int STA_CLK ;
 int STA_NANO ;
 int STA_PLL ;
 int STA_RONLY ;
 int STA_UNSYNC ;
 int TIME_ERROR ;
 int TIME_OK ;
 int copyin (int ,int ,int) ;
 int copyout (int ,int ,int) ;
 int hardupdate (int) ;
 scalar_t__ ntp_is_time_error (int) ;
 int pps_calcnt ;
 int pps_errcnt ;
 long long pps_freq ;
 int pps_jitcnt ;
 int pps_jitter ;
 scalar_t__ pps_shift ;
 scalar_t__ pps_shiftmax ;
 int pps_stabil ;
 int pps_stbcnt ;
 int priv_check (struct thread*,int ) ;
 scalar_t__ time_constant ;
 int time_esterror ;
 long long time_freq ;
 int time_maxerror ;
 long long time_offset ;
 int time_precision ;
 int time_state ;
 int time_status ;
 scalar_t__ time_tai ;

int
sys_ntp_adjtime(struct thread *td, struct ntp_adjtime_args *uap)
{
 struct timex ntv;
 long freq;
 int modes;
 int error, retval;

 error = copyin((caddr_t)uap->tp, (caddr_t)&ntv, sizeof(ntv));
 if (error)
  return (error);
 modes = ntv.modes;
 if (modes)
  error = priv_check(td, PRIV_NTP_ADJTIME);
 if (error != 0)
  return (error);
 NTP_LOCK();
 if (modes & MOD_MAXERROR)
  time_maxerror = ntv.maxerror;
 if (modes & MOD_ESTERROR)
  time_esterror = ntv.esterror;
 if (modes & MOD_STATUS) {
  if (time_status & STA_PLL && !(ntv.status & STA_PLL)) {
   time_state = TIME_OK;
   time_status = STA_UNSYNC;



  }
  time_status &= STA_RONLY;
  time_status |= ntv.status & ~STA_RONLY;
 }
 if (modes & MOD_TIMECONST) {
  if (ntv.constant < 0)
   time_constant = 0;
  else if (ntv.constant > MAXTC)
   time_constant = MAXTC;
  else
   time_constant = ntv.constant;
 }
 if (modes & MOD_TAI) {
  if (ntv.constant > 0)
   time_tai = ntv.constant;
 }
 if (modes & MOD_NANO)
  time_status |= STA_NANO;
 if (modes & MOD_MICRO)
  time_status &= ~STA_NANO;
 if (modes & MOD_CLKB)
  time_status |= STA_CLK;
 if (modes & MOD_CLKA)
  time_status &= ~STA_CLK;
 if (modes & MOD_FREQUENCY) {
  freq = (ntv.freq * 1000LL) >> 16;
  if (freq > MAXFREQ)
   L_LINT(time_freq, MAXFREQ);
  else if (freq < -MAXFREQ)
   L_LINT(time_freq, -MAXFREQ);
  else {




   time_freq = ntv.freq * 1000LL * 65536LL;
  }



 }
 if (modes & MOD_OFFSET) {
  if (time_status & STA_NANO)
   hardupdate(ntv.offset);
  else
   hardupdate(ntv.offset * 1000);
 }





 if (time_status & STA_NANO)
  ntv.offset = L_GINT(time_offset);
 else
  ntv.offset = L_GINT(time_offset) / 1000;
 ntv.freq = L_GINT((time_freq / 1000LL) << 16);
 ntv.maxerror = time_maxerror;
 ntv.esterror = time_esterror;
 ntv.status = time_status;
 ntv.constant = time_constant;
 if (time_status & STA_NANO)
  ntv.precision = time_precision;
 else
  ntv.precision = time_precision / 1000;
 ntv.tolerance = MAXFREQ * SCALE_PPM;
 retval = ntp_is_time_error(time_status) ? TIME_ERROR : time_state;
 NTP_UNLOCK();

 error = copyout((caddr_t)&ntv, (caddr_t)uap->tp, sizeof(ntv));
 if (error == 0)
  td->td_retval[0] = retval;
 return (error);
}
