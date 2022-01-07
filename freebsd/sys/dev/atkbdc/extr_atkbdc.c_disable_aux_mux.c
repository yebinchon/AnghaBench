
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aux_mux_enabled; } ;
typedef int KBDC ;


 int FALSE ;
 TYPE_1__* kbdcp (int ) ;
 int set_aux_mux_state (int ,int ) ;

int
disable_aux_mux(KBDC p)
{

 kbdcp(p)->aux_mux_enabled = FALSE;

 return (set_aux_mux_state(p, FALSE));
}
