
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct com_s {TYPE_1__* tp; } ;
typedef scalar_t__ bool_t ;
struct TYPE_2__ {int t_state; } ;


 scalar_t__ FALSE ;
 int NPORTS ;
 scalar_t__ TRUE ;
 int TS_ISOPEN ;
 struct com_s* cy_addr (int) ;
 int cy_timeout ;
 int cy_timeout_handle ;
 int cy_timeouts_until_log ;
 int cywakeup (void*) ;
 int hz ;
 int timeout (int (*) (void*),void*,int) ;
 int untimeout (int (*) (void*),void*,int ) ;

__attribute__((used)) static void
cysettimeout()
{
 struct com_s *com;
 bool_t someopen;
 int unit;






 untimeout(cywakeup, (void *)((void*)0), cy_timeout_handle);
 cy_timeout = hz;
 someopen = FALSE;
 for (unit = 0; unit < NPORTS; ++unit) {
  com = cy_addr(unit);
  if (com != ((void*)0) && com->tp != ((void*)0)
      && com->tp->t_state & TS_ISOPEN) {
   someopen = TRUE;
  }
 }
 if (someopen) {
  cy_timeouts_until_log = hz / cy_timeout;
  cy_timeout_handle = timeout(cywakeup, (void *)((void*)0),
          cy_timeout);
 } else {

  cy_timeouts_until_log = 1;
  cywakeup((void *)((void*)0));
  untimeout(cywakeup, (void *)((void*)0), cy_timeout_handle);
 }
}
