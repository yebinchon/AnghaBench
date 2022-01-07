
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int dummy; } ;
struct intsrc {int dummy; } ;


 int PCPU_GET (int ) ;
 int apic_id ;
 int apic_idt_to_irq (int ,int) ;
 int intr_execute_handlers (struct intsrc*,struct trapframe*) ;
 struct intsrc* intr_lookup_source (int ) ;

void
lapic_handle_intr(int vector, struct trapframe *frame)
{
 struct intsrc *isrc;

 isrc = intr_lookup_source(apic_idt_to_irq(PCPU_GET(apic_id),
     vector));
 intr_execute_handlers(isrc, frame);
}
