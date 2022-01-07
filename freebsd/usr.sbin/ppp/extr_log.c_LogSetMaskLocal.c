
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prompt {int logmask; struct prompt* next; } ;


 int LogALERT ;
 int LogERROR ;
 int LogMaskLocal ;
 int LogWARN ;
 int MSK (int ) ;
 struct prompt* promptlist ;

__attribute__((used)) static void
LogSetMaskLocal(void)
{
  struct prompt *p;

  LogMaskLocal = MSK(LogERROR) | MSK(LogALERT) | MSK(LogWARN);
  for (p = promptlist; p; p = p->next)
    LogMaskLocal |= p->logmask;
}
