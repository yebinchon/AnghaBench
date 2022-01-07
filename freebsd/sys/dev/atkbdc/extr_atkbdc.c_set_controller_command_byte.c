
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int command_byte; } ;
typedef int KBDC ;


 int FALSE ;
 int KBDC_DISABLE_KBD_PORT ;
 int KBDC_SET_COMMAND_BYTE ;
 int KBD_DISABLE_KBD_PORT ;
 int LOG_DEBUG ;
 int TRUE ;
 int get_controller_command_byte (int ) ;
 TYPE_1__* kbdcp (int ) ;
 int log (int ,char*,int) ;
 scalar_t__ verbose ;
 int write_controller_command (int ,int ) ;
 int write_controller_data (int ,int) ;

int
set_controller_command_byte(KBDC p, int mask, int command)
{
    if (get_controller_command_byte(p) == -1)
 return FALSE;

    command = (kbdcp(p)->command_byte & ~mask) | (command & mask);
    if (command & KBD_DISABLE_KBD_PORT) {
 if (!write_controller_command(p, KBDC_DISABLE_KBD_PORT))
     return FALSE;
    }
    if (!write_controller_command(p, KBDC_SET_COMMAND_BYTE))
 return FALSE;
    if (!write_controller_data(p, command))
 return FALSE;
    kbdcp(p)->command_byte = command;

    if (verbose)
        log(LOG_DEBUG, "kbdc: new command byte:%04x (set_controller...)\n",
     command);

    return TRUE;
}
