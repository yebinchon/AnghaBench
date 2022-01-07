
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfi_softc {scalar_t__ sc_writing; scalar_t__ sc_wrofs; scalar_t__ sc_wrbufsz; int * sc_wrbuf; int * sc_wrbufcpy; } ;


 int M_TEMP ;
 int cfi_write_block (struct cfi_softc*) ;
 int free (int *,int ) ;

int
cfi_block_finish(struct cfi_softc *sc)
{
 int error;

 error = cfi_write_block(sc);
 free(sc->sc_wrbuf, M_TEMP);
 free(sc->sc_wrbufcpy, M_TEMP);
 sc->sc_wrbuf = ((void*)0);
 sc->sc_wrbufsz = 0;
 sc->sc_wrofs = 0;
 sc->sc_writing = 0;
 return (error);
}
