
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct octeon_device {size_t num_consoles; TYPE_1__* console_timer; struct lio_console* console; } ;
struct lio_console {scalar_t__ output_base_addr; scalar_t__ input_base_addr; scalar_t__ buffer_size; scalar_t__ addr; int active; } ;
struct TYPE_2__ {int timer; } ;


 int callout_stop (int *) ;

void
lio_remove_consoles(struct octeon_device *oct)
{
 struct lio_console *console;
 uint32_t i;

 for (i = 0; i < oct->num_consoles; i++) {
  console = &oct->console[i];

  if (!console->active)
   continue;

  callout_stop(&oct->console_timer[i].timer);
  console->addr = 0;
  console->buffer_size = 0;
  console->input_base_addr = 0;
  console->output_base_addr = 0;
 }

 oct->num_consoles = 0;
}
