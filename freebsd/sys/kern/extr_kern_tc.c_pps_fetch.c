
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_6__ {int current_mode; int clear_sequence; int assert_sequence; } ;
struct TYPE_5__ {int mode; } ;
struct pps_state {int flags; TYPE_3__ ppsinfo; TYPE_2__ ppsparam; int * driver_mtx; } ;
struct TYPE_4__ {int tv_sec; int tv_nsec; } ;
struct pps_fetch_args {scalar_t__ tsformat; TYPE_3__ pps_info_buf; TYPE_1__ timeout; } ;
typedef scalar_t__ pps_seq_t ;


 int EINVAL ;
 int ETIMEDOUT ;
 int EWOULDBLOCK ;
 int PCATCH ;
 int PPSFLAG_MTX_SPIN ;
 scalar_t__ PPS_TSFMT_TSPEC ;
 scalar_t__ abi_aware (struct pps_state*,int) ;
 scalar_t__ atomic_load_int (int *) ;
 int msleep (struct pps_state*,int *,int ,char*,int) ;
 int msleep_spin (struct pps_state*,int *,char*,int) ;
 int tsleep (struct pps_state*,int ,char*,int) ;
 int tvtohz (struct timeval*) ;

__attribute__((used)) static int
pps_fetch(struct pps_fetch_args *fapi, struct pps_state *pps)
{
 int err, timo;
 pps_seq_t aseq, cseq;
 struct timeval tv;

 if (fapi->tsformat && fapi->tsformat != PPS_TSFMT_TSPEC)
  return (EINVAL);
 if (fapi->timeout.tv_sec || fapi->timeout.tv_nsec) {
  if (fapi->timeout.tv_sec == -1)
   timo = 0x7fffffff;
  else {
   tv.tv_sec = fapi->timeout.tv_sec;
   tv.tv_usec = fapi->timeout.tv_nsec / 1000;
   timo = tvtohz(&tv);
  }
  aseq = atomic_load_int(&pps->ppsinfo.assert_sequence);
  cseq = atomic_load_int(&pps->ppsinfo.clear_sequence);
  while (aseq == atomic_load_int(&pps->ppsinfo.assert_sequence) &&
      cseq == atomic_load_int(&pps->ppsinfo.clear_sequence)) {
   if (abi_aware(pps, 1) && pps->driver_mtx != ((void*)0)) {
    if (pps->flags & PPSFLAG_MTX_SPIN) {
     err = msleep_spin(pps, pps->driver_mtx,
         "ppsfch", timo);
    } else {
     err = msleep(pps, pps->driver_mtx, PCATCH,
         "ppsfch", timo);
    }
   } else {
    err = tsleep(pps, PCATCH, "ppsfch", timo);
   }
   if (err == EWOULDBLOCK) {
    if (fapi->timeout.tv_sec == -1) {
     continue;
    } else {
     return (ETIMEDOUT);
    }
   } else if (err != 0) {
    return (err);
   }
  }
 }

 pps->ppsinfo.current_mode = pps->ppsparam.mode;
 fapi->pps_info_buf = pps->ppsinfo;

 return (0);
}
