
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct intsrc {int dummy; } ;
struct atpic_intsrc {int at_trigger; } ;
typedef enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;


 int EINVAL ;
 int ENXIO ;
 int INTR_POLARITY_CONFORM ;
 int INTR_POLARITY_HIGH ;
 int INTR_POLARITY_LOW ;
 int INTR_TRIGGER_CONFORM ;
 int INTR_TRIGGER_EDGE ;
 int INTR_TRIGGER_LEVEL ;
 int atpic_vector (struct intsrc*) ;
 scalar_t__ bootverbose ;
 int elcr_found ;
 int elcr_write_trigger (int,int) ;
 int printf (char*,int,...) ;
 int spinlock_enter () ;
 int spinlock_exit () ;

__attribute__((used)) static int
atpic_config_intr(struct intsrc *isrc, enum intr_trigger trig,
    enum intr_polarity pol)
{
 struct atpic_intsrc *ai = (struct atpic_intsrc *)isrc;
 u_int vector;


 if (trig == INTR_TRIGGER_CONFORM)
  trig = INTR_TRIGGER_EDGE;
 if (pol == INTR_POLARITY_CONFORM)
  pol = INTR_POLARITY_HIGH;
 vector = atpic_vector(isrc);
 if ((trig == INTR_TRIGGER_EDGE && pol == INTR_POLARITY_LOW) ||
     (trig == INTR_TRIGGER_LEVEL && pol == INTR_POLARITY_HIGH)) {
  printf(
  "atpic: Mismatched config for IRQ%u: trigger %s, polarity %s\n",
      vector, trig == INTR_TRIGGER_EDGE ? "edge" : "level",
      pol == INTR_POLARITY_HIGH ? "high" : "low");
  return (EINVAL);
 }


 if (ai->at_trigger == trig)
  return (0);






 if ((vector == 0 || vector == 1 || vector == 2 || vector == 13) &&
     trig == INTR_TRIGGER_LEVEL) {
  if (bootverbose)
   printf(
  "atpic: Ignoring invalid level/low configuration for IRQ%u\n",
       vector);
  return (EINVAL);
 }
 if (!elcr_found) {
  if (bootverbose)
   printf("atpic: No ELCR to configure IRQ%u as %s\n",
       vector, trig == INTR_TRIGGER_EDGE ? "edge/high" :
       "level/low");
  return (ENXIO);
 }
 if (bootverbose)
  printf("atpic: Programming IRQ%u as %s\n", vector,
      trig == INTR_TRIGGER_EDGE ? "edge/high" : "level/low");
 spinlock_enter();
 elcr_write_trigger(atpic_vector(isrc), trig);
 ai->at_trigger = trig;
 spinlock_exit();
 return (0);
}
