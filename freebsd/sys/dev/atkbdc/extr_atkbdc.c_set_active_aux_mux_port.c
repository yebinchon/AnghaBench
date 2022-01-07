
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aux_mux_port; } ;
typedef int KBDC ;


 int FALSE ;
 int KBDC_AUX_MUX_NUM_PORTS ;
 int TRUE ;
 int aux_mux_is_enabled (int ) ;
 TYPE_1__* kbdcp (int ) ;

int
set_active_aux_mux_port(KBDC p, int port)
{

 if (!aux_mux_is_enabled(p))
  return (FALSE);

 if (port < 0 || port >= KBDC_AUX_MUX_NUM_PORTS)
  return (FALSE);

 kbdcp(p)->aux_mux_port = port;

 return (TRUE);
}
