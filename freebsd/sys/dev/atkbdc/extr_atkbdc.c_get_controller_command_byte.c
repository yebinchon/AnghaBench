
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int command_byte; int kbd; } ;
typedef int KBDC ;


 int KBDC_GET_COMMAND_BYTE ;
 int emptyq (int *) ;
 TYPE_1__* kbdcp (int ) ;
 int read_controller_data (int ) ;
 int write_controller_command (int ,int ) ;

int
get_controller_command_byte(KBDC p)
{
    if (kbdcp(p)->command_byte != -1)
 return kbdcp(p)->command_byte;
    if (!write_controller_command(p, KBDC_GET_COMMAND_BYTE))
 return -1;
    emptyq(&kbdcp(p)->kbd);
    kbdcp(p)->command_byte = read_controller_data(p);
    return kbdcp(p)->command_byte;
}
