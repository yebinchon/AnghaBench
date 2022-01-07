
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lance_softc {scalar_t__ sc_mem; } ;
typedef scalar_t__ caddr_t ;


 int memset (scalar_t__ volatile,int ,int) ;

void
lance_zerobuf_contig(struct lance_softc *sc, int boff, int len)
{
 volatile caddr_t buf = sc->sc_mem;




 memset(buf + boff, 0, len);
}
