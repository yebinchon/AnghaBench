
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct com_s {scalar_t__ poll_output; scalar_t__ poll; int gone; TYPE_1__* tp; } ;
typedef scalar_t__ bool_t ;
struct TYPE_2__ {int t_state; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int TS_ISOPEN ;
 struct com_s* com_addr (int) ;
 int comwakeup (void*) ;
 int hz ;
 int sio_numunits ;
 int sio_timeout ;
 int sio_timeout_handle ;
 int sio_timeouts_until_log ;
 int timeout (int (*) (void*),void*,int) ;
 int untimeout (int (*) (void*),void*,int ) ;

__attribute__((used)) static void
siosettimeout()
{
 struct com_s *com;
 bool_t someopen;
 int unit;






 untimeout(comwakeup, (void *)((void*)0), sio_timeout_handle);
 sio_timeout = hz;
 someopen = FALSE;
 for (unit = 0; unit < sio_numunits; ++unit) {
  com = com_addr(unit);
  if (com != ((void*)0) && com->tp != ((void*)0)
      && com->tp->t_state & TS_ISOPEN && !com->gone) {
   someopen = TRUE;
   if (com->poll || com->poll_output) {
    sio_timeout = hz > 200 ? hz / 200 : 1;
    break;
   }
  }
 }
 if (someopen) {
  sio_timeouts_until_log = hz / sio_timeout;
  sio_timeout_handle = timeout(comwakeup, (void *)((void*)0),
          sio_timeout);
 } else {

  sio_timeouts_until_log = 1;
  comwakeup((void *)((void*)0));
  untimeout(comwakeup, (void *)((void*)0), sio_timeout_handle);
 }
}
