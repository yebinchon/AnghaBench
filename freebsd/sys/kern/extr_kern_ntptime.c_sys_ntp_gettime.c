
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int * td_retval; } ;
struct ntptimeval {int time_state; } ;
struct ntp_gettime_args {int ntvp; } ;
typedef int ntv ;


 int NTP_LOCK () ;
 int NTP_UNLOCK () ;
 int copyout (struct ntptimeval*,int ,int) ;
 int memset (struct ntptimeval*,int ,int) ;
 int ntp_gettime1 (struct ntptimeval*) ;

int
sys_ntp_gettime(struct thread *td, struct ntp_gettime_args *uap)
{
 struct ntptimeval ntv;

 memset(&ntv, 0, sizeof(ntv));

 NTP_LOCK();
 ntp_gettime1(&ntv);
 NTP_UNLOCK();

 td->td_retval[0] = ntv.time_state;
 return (copyout(&ntv, uap->ntvp, sizeof(ntv)));
}
