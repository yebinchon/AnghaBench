
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aux_mux_enabled; } ;
typedef int KBDC ;


 int TRUE ;
 TYPE_1__* kbdcp (int ) ;
 int set_active_aux_mux_port (int ,int ) ;
 int set_aux_mux_state (int ,int ) ;

int
enable_aux_mux(KBDC p)
{
 int version;

 version = set_aux_mux_state(p, TRUE);
 if (version >= 0) {
  kbdcp(p)->aux_mux_enabled = TRUE;
  set_active_aux_mux_port(p, 0);
 }

 return (version);
}
