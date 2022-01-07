
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct com_s {int etc; int intr_enable; } ;


 int CD1400_ETC_SENDBREAK ;
 int CD1400_ETC_STOPBREAK ;
 int CD1400_SRER ;
 int CD1400_SRER_TXMPTY ;
 int CD1400_SRER_TXRDY ;
 int COM_LOCK () ;
 int COM_UNLOCK () ;
 int ETC_BREAK_ENDED ;
 int ETC_BREAK_ENDING ;
 int ETC_BREAK_STARTED ;
 int ETC_BREAK_STARTING ;
 int ETC_NONE ;
 int PCATCH ;
 int TTIPRI ;
 int cd_setreg (struct com_s*,int ,int) ;
 int critical_enter () ;
 int critical_exit () ;
 scalar_t__ tsleep (int*,int,char*,int ) ;

__attribute__((used)) static void
cd_etc(struct com_s *com, int etc)
{
 critical_enter();
 COM_LOCK();
 if (com->etc == etc)
  goto wait;
 if ((etc == CD1400_ETC_SENDBREAK
     && (com->etc == ETC_BREAK_STARTING
  || com->etc == ETC_BREAK_STARTED))
     || (etc == CD1400_ETC_STOPBREAK
        && (com->etc == ETC_BREAK_ENDING || com->etc == ETC_BREAK_ENDED
     || com->etc == ETC_NONE))) {
  COM_UNLOCK();
  critical_exit();
  return;
 }
 com->etc = etc;
 cd_setreg(com, CD1400_SRER,
    com->intr_enable
    = (com->intr_enable & ~CD1400_SRER_TXRDY) | CD1400_SRER_TXMPTY);
wait:
 COM_UNLOCK();
 critical_exit();
 while (com->etc == etc
        && tsleep(&com->etc, TTIPRI | PCATCH, "cyetc", 0) == 0)
  continue;
}
