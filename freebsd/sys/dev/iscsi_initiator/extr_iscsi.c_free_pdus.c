
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isc_softc {int * pdu_zone; } ;


 int debug_called (int) ;
 int uma_zdestroy (int *) ;

__attribute__((used)) static void
free_pdus(struct isc_softc *sc)
{
     debug_called(8);

     if(sc->pdu_zone != ((void*)0)) {
   uma_zdestroy(sc->pdu_zone);
   sc->pdu_zone = ((void*)0);
     }
}
