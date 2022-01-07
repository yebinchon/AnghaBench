
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gpiobus_ivar {int npins; int * pins; } ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int * malloc (int,int ,int) ;

int
gpiobus_alloc_ivars(struct gpiobus_ivar *devi)
{


 devi->pins = malloc(sizeof(uint32_t) * devi->npins, M_DEVBUF,
     M_NOWAIT | M_ZERO);
 if (devi->pins == ((void*)0))
  return (ENOMEM);
 return (0);
}
