
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 int FALSE ;
 int LOG_ERR ;
 int TRUE ;
 int empty_both_buffers (int ,int) ;
 int log (int ,char*) ;
 int set_controller_command_byte (int ,int,int) ;

__attribute__((used)) static int
restore_controller(KBDC kbdc, int command_byte)
{
 empty_both_buffers(kbdc, 10);

 if (!set_controller_command_byte(kbdc, 0xff, command_byte)) {
  log(LOG_ERR, "psm: failed to restore the keyboard controller "
      "command byte.\n");
  empty_both_buffers(kbdc, 10);
  return (FALSE);
 } else {
  empty_both_buffers(kbdc, 10);
  return (TRUE);
 }
}
