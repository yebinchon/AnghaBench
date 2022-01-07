
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KBDC ;


 int KBDC_FORCE_AUX_OUTPUT ;
 int read_controller_data (int ) ;
 scalar_t__ write_controller_command (int ,int ) ;
 scalar_t__ write_controller_data (int ,int) ;

__attribute__((used)) static int
set_aux_mux_state(KBDC p, int enabled)
{
 int command, version;

 if (write_controller_command(p, KBDC_FORCE_AUX_OUTPUT) == 0 ||
     write_controller_data(p, 0xF0) == 0 ||
     read_controller_data(p) != 0xF0)
  return (-1);

 if (write_controller_command(p, KBDC_FORCE_AUX_OUTPUT) == 0 ||
     write_controller_data(p, 0x56) == 0 ||
     read_controller_data(p) != 0x56)
  return (-1);

 command = enabled ? 0xa4 : 0xa5;
 if (write_controller_command(p, KBDC_FORCE_AUX_OUTPUT) == 0 ||
     write_controller_data(p, command) == 0 ||
     (version = read_controller_data(p)) == command)
  return (-1);

 return (version);
}
