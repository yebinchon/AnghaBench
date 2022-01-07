
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiobus_ivar {scalar_t__ npins; int * pins; } ;


 int M_DEVBUF ;
 int free (int *,int ) ;

void
gpiobus_free_ivars(struct gpiobus_ivar *devi)
{

 if (devi->pins) {
  free(devi->pins, M_DEVBUF);
  devi->pins = ((void*)0);
 }
 devi->npins = 0;
}
