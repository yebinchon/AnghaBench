
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int * fp; } ;


 int TRUE ;
 int bxe_setup_queue (struct bxe_softc*,int *,int ) ;

__attribute__((used)) static int
bxe_setup_leading(struct bxe_softc *sc)
{
    return (bxe_setup_queue(sc, &sc->fp[0], TRUE));
}
