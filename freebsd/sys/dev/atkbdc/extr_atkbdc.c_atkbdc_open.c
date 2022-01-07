
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ioh0; int * port0; } ;
typedef int * KBDC ;


 int MAXKBDC ;
 TYPE_1__** atkbdc_softc ;

KBDC
atkbdc_open(int unit)
{
    if (unit <= 0)
 unit = 0;
    if (unit >= MAXKBDC)
 return ((void*)0);
    if ((atkbdc_softc[unit]->port0 != ((void*)0))
 || (atkbdc_softc[unit]->ioh0 != 0))
 return (KBDC)atkbdc_softc[unit];
    return ((void*)0);
}
