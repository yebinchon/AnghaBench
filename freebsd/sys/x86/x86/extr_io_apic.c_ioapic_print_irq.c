
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioapic_intsrc {int io_irq; int io_bus; } ;






 char* ioapic_bus_string (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
ioapic_print_irq(struct ioapic_intsrc *intpin)
{

 switch (intpin->io_irq) {
 case 131:
  printf("disabled");
  break;
 case 130:
  printf("ExtINT");
  break;
 case 129:
  printf("NMI");
  break;
 case 128:
  printf("SMI");
  break;
 default:
  printf("%s IRQ %d", ioapic_bus_string(intpin->io_bus),
      intpin->io_irq);
 }
}
