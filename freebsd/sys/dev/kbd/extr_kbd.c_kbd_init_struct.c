
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* kb_name; int kb_type; int kb_unit; int kb_config; int kb_io_base; int kb_io_size; long kb_count; int kb_lastact; int kb_delay2; int kb_delay1; scalar_t__ kb_fkeytab_size; int * kb_fkeytab; int * kb_accentmap; int * kb_keymap; int * kb_data; scalar_t__ kb_led; int kb_flags; } ;
typedef TYPE_1__ keyboard_t ;


 int KB_CONF_PROBE_ONLY ;
 int KB_DELAY1 ;
 int KB_DELAY2 ;
 int KB_NO_DEVICE ;
 int bzero (int ,int) ;

void
kbd_init_struct(keyboard_t *kbd, char *name, int type, int unit, int config,
  int port, int port_size)
{
 kbd->kb_flags = KB_NO_DEVICE;
 kbd->kb_name = name;
 kbd->kb_type = type;
 kbd->kb_unit = unit;
 kbd->kb_config = config & ~KB_CONF_PROBE_ONLY;
 kbd->kb_led = 0;
 kbd->kb_io_base = port;
 kbd->kb_io_size = port_size;
 kbd->kb_data = ((void*)0);
 kbd->kb_keymap = ((void*)0);
 kbd->kb_accentmap = ((void*)0);
 kbd->kb_fkeytab = ((void*)0);
 kbd->kb_fkeytab_size = 0;
 kbd->kb_delay1 = KB_DELAY1;
 kbd->kb_delay2 = KB_DELAY2;
 kbd->kb_count = 0L;
 bzero(kbd->kb_lastact, sizeof(kbd->kb_lastact));
}
