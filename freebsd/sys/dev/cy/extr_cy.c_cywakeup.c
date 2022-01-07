
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct com_s {int* delta_error_counts; int* error_counts; } ;


 int CE_NTYPES ;
 int COM_LOCK () ;
 int COM_UNLOCK () ;
 int LOG_ERR ;
 int NPORTS ;
 int critical_enter () ;
 int critical_exit () ;
 struct com_s* cy_addr (int) ;
 scalar_t__ cy_timeout ;
 int cy_timeout_handle ;
 scalar_t__ cy_timeouts_until_log ;
 int * error_desc ;
 scalar_t__ hz ;
 int log (int ,char*,int,int,int ,char*,int) ;
 int timeout (void (*) (void*),void*,scalar_t__) ;

__attribute__((used)) static void
cywakeup(void *chan)
{
 struct com_s *com;
 int unit;

 cy_timeout_handle = timeout(cywakeup, (void *)((void*)0), cy_timeout);




 if (--cy_timeouts_until_log > 0)
  return;
 cy_timeouts_until_log = hz / cy_timeout;
 for (unit = 0; unit < NPORTS; ++unit) {
  int errnum;

  com = cy_addr(unit);
  if (com == ((void*)0))
   continue;
  for (errnum = 0; errnum < CE_NTYPES; ++errnum) {
   u_int delta;
   u_long total;

   critical_enter();
   COM_LOCK();
   delta = com->delta_error_counts[errnum];
   com->delta_error_counts[errnum] = 0;
   COM_UNLOCK();
   critical_exit();
   if (delta == 0)
    continue;
   total = com->error_counts[errnum] += delta;
   log(LOG_ERR, "cy%d: %u more %s%s (total %lu)\n",
       unit, delta, error_desc[errnum],
       delta == 1 ? "" : "s", total);
  }
 }
}
