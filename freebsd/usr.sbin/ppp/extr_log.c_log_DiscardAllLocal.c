
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int LogALERT ;
 int LogERROR ;
 int LogSetMaskLocal () ;
 int LogWARN ;
 int MSK (int ) ;

void
log_DiscardAllLocal(u_long *mask)
{
  *mask = MSK(LogERROR) | MSK(LogALERT) | MSK(LogWARN);
  LogSetMaskLocal();
}
