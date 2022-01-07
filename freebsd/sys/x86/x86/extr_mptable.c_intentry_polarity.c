
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* int_entry_ptr ;
typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
struct TYPE_3__ {int int_flags; int src_bus_irq; int src_bus_id; } ;


 int INTENTRY_FLAGS_POLARITY ;



 int INTR_POLARITY_HIGH ;
 int INTR_POLARITY_LOW ;
 int conforming_polarity (int ,int ) ;
 int panic (char*) ;

__attribute__((used)) static enum intr_polarity
intentry_polarity(int_entry_ptr intr)
{

 switch (intr->int_flags & INTENTRY_FLAGS_POLARITY) {
 case 128:
  return (conforming_polarity(intr->src_bus_id,
       intr->src_bus_irq));
 case 130:
  return (INTR_POLARITY_HIGH);
 case 129:
  return (INTR_POLARITY_LOW);
 default:
  panic("Bogus interrupt flags");
 }
}
