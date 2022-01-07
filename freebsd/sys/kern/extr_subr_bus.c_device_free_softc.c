
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_BUS_SC ;
 int free_domain (void*,int ) ;

void
device_free_softc(void *softc)
{
 free_domain(softc, M_BUS_SC);
}
