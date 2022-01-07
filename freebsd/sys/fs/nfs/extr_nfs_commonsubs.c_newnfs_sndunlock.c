
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int caddr_t ;


 int NFSLOCKSOCK () ;
 int NFSR_SNDLOCK ;
 int NFSR_WANTSND ;
 int NFSUNLOCKSOCK () ;
 int panic (char*) ;
 int wakeup (int ) ;

void
newnfs_sndunlock(int *flagp)
{

 NFSLOCKSOCK();
 if ((*flagp & NFSR_SNDLOCK) == 0)
  panic("nfs sndunlock");
 *flagp &= ~NFSR_SNDLOCK;
 if (*flagp & NFSR_WANTSND) {
  *flagp &= ~NFSR_WANTSND;
  wakeup((caddr_t)flagp);
 }
 NFSUNLOCKSOCK();
}
