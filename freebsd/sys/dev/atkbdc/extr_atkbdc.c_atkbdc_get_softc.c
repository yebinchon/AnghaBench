
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atkbdc_softc_t ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int ** atkbdc_softc ;
 int * malloc (int,int ,int) ;
 int nitems (int **) ;

atkbdc_softc_t
*atkbdc_get_softc(int unit)
{
 atkbdc_softc_t *sc;

 if (unit >= nitems(atkbdc_softc))
  return ((void*)0);
 sc = atkbdc_softc[unit];
 if (sc == ((void*)0)) {
  sc = atkbdc_softc[unit]
     = malloc(sizeof(*sc), M_DEVBUF, M_NOWAIT | M_ZERO);
  if (sc == ((void*)0))
   return ((void*)0);
 }
 return sc;
}
