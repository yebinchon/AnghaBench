
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* int_entry_ptr ;
typedef enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
struct TYPE_3__ {int int_flags; int src_bus_irq; int src_bus_id; } ;


 int INTENTRY_FLAGS_TRIGGER ;



 int INTR_TRIGGER_EDGE ;
 int INTR_TRIGGER_LEVEL ;
 int conforming_trigger (int ,int ) ;
 int panic (char*) ;

__attribute__((used)) static enum intr_trigger
intentry_trigger(int_entry_ptr intr)
{

 switch (intr->int_flags & INTENTRY_FLAGS_TRIGGER) {
 case 130:
  return (conforming_trigger(intr->src_bus_id,
       intr->src_bus_irq));
 case 129:
  return (INTR_TRIGGER_EDGE);
 case 128:
  return (INTR_TRIGGER_LEVEL);
 default:
  panic("Bogus interrupt flags");
 }
}
