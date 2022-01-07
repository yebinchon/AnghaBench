
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lance_softc {scalar_t__ sc_mem; } ;
typedef scalar_t__ caddr_t ;


 int memcpy (void*,scalar_t__ volatile,int) ;

void
lance_copyfrombuf_contig(struct lance_softc *sc, void *to, int boff, int len)
{
 volatile caddr_t buf = sc->sc_mem;




 memcpy(to, buf + boff, len);
}
