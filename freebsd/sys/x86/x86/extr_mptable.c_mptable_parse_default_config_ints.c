
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct INTENTRY {int int_flags; int dst_apic_id; int dst_apic_int; int src_bus_irq; void* int_type; scalar_t__ src_bus_id; int type; } ;
struct TYPE_2__ {int config_type; } ;


 int INTENTRY_FLAGS_POLARITY_CONFORM ;
 int INTENTRY_FLAGS_TRIGGER_CONFORM ;
 void* INTENTRY_TYPE_EXTINT ;
 void* INTENTRY_TYPE_INT ;
 int MPCT_ENTRY_INT ;
 int ioapic_disable_pin (int ,int) ;
 int * ioapics ;
 TYPE_1__* mpfps ;
 int mptable_parse_io_int (struct INTENTRY*) ;

__attribute__((used)) static void
mptable_parse_default_config_ints(void)
{
 struct INTENTRY entry;
 int pin;





 entry.type = MPCT_ENTRY_INT;
 entry.int_flags = INTENTRY_FLAGS_POLARITY_CONFORM |
     INTENTRY_FLAGS_TRIGGER_CONFORM;
 entry.src_bus_id = 0;
 entry.dst_apic_id = 2;


 for (pin = 0; pin < 16; pin++) {
  entry.dst_apic_int = pin;
  switch (pin) {
  case 0:

   entry.int_type = INTENTRY_TYPE_EXTINT;
   break;
  case 2:

   entry.int_type = INTENTRY_TYPE_INT;
   entry.src_bus_irq = 0;
   break;
  default:

   entry.int_type = INTENTRY_TYPE_INT;
   entry.src_bus_irq = pin;
   break;
  }
  mptable_parse_io_int(&entry);
 }


 if (mpfps->config_type == 7)
  ioapic_disable_pin(ioapics[2], 0);
 if (mpfps->config_type == 2) {
  ioapic_disable_pin(ioapics[2], 2);
  ioapic_disable_pin(ioapics[2], 13);
 }
}
