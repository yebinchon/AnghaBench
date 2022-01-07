
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 int LOG_ERR ;
 int VLOG (int,int ) ;
 int empty_both_buffers (int ,int) ;
 int log (int ,char*) ;
 int reset_kbd (int ) ;
 int test_controller (int ) ;
 scalar_t__ test_kbd_port (int ) ;

__attribute__((used)) static void
recover_from_error(KBDC kbdc)
{

 empty_both_buffers(kbdc, 10);
 if (!test_controller(kbdc))
  log(LOG_ERR, "psm: keyboard controller failed.\n");

 if (test_kbd_port(kbdc) != 0)
  VLOG(1, (LOG_ERR, "psm: keyboard port failed.\n"));

}
