
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * KBDC ;


 int ATKBD_DEFAULT ;
 int ENXIO ;
 scalar_t__ KBD_IS_PROBED (int *) ;
 int KB_CONF_FAIL_IF_NO_KBD ;
 int * atkbdc_open (int) ;
 int default_kbd ;
 scalar_t__ probe_keyboard (int *,int) ;

__attribute__((used)) static int
atkbd_probe(int unit, void *arg, int flags)
{
 KBDC kbdc;
 int *data = (int *)arg;


 if (unit == ATKBD_DEFAULT) {
  if (KBD_IS_PROBED(&default_kbd))
   return 0;
 }

 kbdc = atkbdc_open(data[0]);
 if (kbdc == ((void*)0))
  return ENXIO;
 if (probe_keyboard(kbdc, flags)) {
  if (flags & KB_CONF_FAIL_IF_NO_KBD)
   return ENXIO;
 }
 return 0;
}
