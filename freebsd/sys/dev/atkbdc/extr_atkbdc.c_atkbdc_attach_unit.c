
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int atkbdc_softc_t ;


 int atkbdc_setup (int *,int ,int ,int ) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;

int
atkbdc_attach_unit(int unit, atkbdc_softc_t *sc, struct resource *port0,
     struct resource *port1)
{
 return atkbdc_setup(sc, rman_get_bustag(port0),
       rman_get_bushandle(port0),
       rman_get_bushandle(port1));
}
