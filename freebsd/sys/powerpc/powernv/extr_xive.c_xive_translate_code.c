
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
typedef int device_t ;


 int INTR_POLARITY_CONFORM ;
 int INTR_POLARITY_HIGH ;
 int INTR_POLARITY_LOW ;
 int INTR_TRIGGER_CONFORM ;
 int INTR_TRIGGER_EDGE ;
 int INTR_TRIGGER_LEVEL ;

__attribute__((used)) static void
xive_translate_code(device_t dev, u_int irq, int code,
    enum intr_trigger *trig, enum intr_polarity *pol)
{
 switch (code) {
 case 0:

  *trig = INTR_TRIGGER_EDGE;
  *pol = INTR_POLARITY_HIGH;
  break;
 case 1:

  *trig = INTR_TRIGGER_LEVEL;
  *pol = INTR_POLARITY_LOW;
  break;
 default:
  *trig = INTR_TRIGGER_CONFORM;
  *pol = INTR_POLARITY_CONFORM;
 }
}
