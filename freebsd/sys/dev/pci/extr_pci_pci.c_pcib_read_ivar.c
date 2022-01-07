
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {uintptr_t sec; } ;
struct pcib_softc {uintptr_t domain; TYPE_1__ bus; } ;
typedef int device_t ;


 int ENOENT ;


 struct pcib_softc* device_get_softc (int ) ;

int
pcib_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
    struct pcib_softc *sc = device_get_softc(dev);

    switch (which) {
    case 128:
 *result = sc->domain;
 return(0);
    case 129:
 *result = sc->bus.sec;
 return(0);
    }
    return(ENOENT);
}
