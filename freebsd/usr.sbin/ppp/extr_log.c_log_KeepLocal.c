
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int LogMAXCONF ;
 int LogMIN ;
 int LogMaskLocal ;
 int MSK (int) ;

void
log_KeepLocal(int id, u_long *mask)
{
  if (id >= LogMIN && id <= LogMAXCONF) {
    LogMaskLocal |= MSK(id);
    *mask |= MSK(id);
  }
}
