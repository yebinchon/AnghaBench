
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lsc; } ;
struct le_lebuffer_softc {TYPE_1__ sc_am7990; } ;
typedef int device_t ;


 struct le_lebuffer_softc* device_get_softc (int ) ;
 int lance_suspend (int *) ;

__attribute__((used)) static int
le_buffer_suspend(device_t dev)
{
 struct le_lebuffer_softc *lesc;

 lesc = device_get_softc(dev);

 lance_suspend(&lesc->sc_am7990.lsc);

 return (0);
}
