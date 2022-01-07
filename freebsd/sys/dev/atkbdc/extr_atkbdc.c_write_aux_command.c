
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aux_mux_port; } ;
typedef int KBDC ;


 int FALSE ;
 int KBDC_WRITE_TO_AUX ;
 int KBDC_WRITE_TO_AUX_MUX ;
 scalar_t__ aux_mux_is_enabled (int ) ;
 TYPE_1__* kbdcp (int ) ;
 int write_controller_command (int ,int) ;
 int write_controller_data (int ,int) ;

int
write_aux_command(KBDC p, int c)
{
    int f;

    f = aux_mux_is_enabled(p) ?
        KBDC_WRITE_TO_AUX_MUX + kbdcp(p)->aux_mux_port : KBDC_WRITE_TO_AUX;

    if (!write_controller_command(p, f))
 return FALSE;
    return write_controller_data(p, c);
}
