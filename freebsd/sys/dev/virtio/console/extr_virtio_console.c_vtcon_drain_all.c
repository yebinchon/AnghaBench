
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hz ;
 int pause (char*,int ) ;
 int printf (char*) ;
 scalar_t__ vtcon_pending_free ;

__attribute__((used)) static void
vtcon_drain_all(void)
{
 int first;

 for (first = 1; vtcon_pending_free != 0; first = 0) {
  if (first != 0) {
   printf("virtio_console: Waiting for all detached TTY "
       "devices to have open fds closed.\n");
  }
  pause("vtcondra", hz);
 }
}
