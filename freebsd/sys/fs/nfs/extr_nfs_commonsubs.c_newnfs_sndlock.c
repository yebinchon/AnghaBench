
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
typedef int caddr_t ;


 int NFSLOCKSOCK () ;
 int NFSR_SNDLOCK ;
 int NFSR_WANTSND ;
 int NFSSOCKMUTEXPTR ;
 int NFSUNLOCKSOCK () ;
 scalar_t__ PZERO ;
 int nfsmsleep (int ,int ,scalar_t__,char*,struct timespec*) ;

int
newnfs_sndlock(int *flagp)
{
 struct timespec ts;

 NFSLOCKSOCK();
 while (*flagp & NFSR_SNDLOCK) {
  *flagp |= NFSR_WANTSND;
  ts.tv_sec = 0;
  ts.tv_nsec = 0;
  (void) nfsmsleep((caddr_t)flagp, NFSSOCKMUTEXPTR,
      PZERO - 1, "nfsndlck", &ts);
 }
 *flagp |= NFSR_SNDLOCK;
 NFSUNLOCKSOCK();
 return (0);
}
