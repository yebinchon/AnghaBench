
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int * ioctl_dev; int * eeprom; } ;


 int M_DEVBUF ;
 int destroy_dev (int *) ;
 int free (int *,int ) ;

__attribute__((used)) static void
bxe_del_cdev(struct bxe_softc *sc)
{
    if (sc->ioctl_dev != ((void*)0))
        destroy_dev(sc->ioctl_dev);

    if (sc->eeprom != ((void*)0)) {
        free(sc->eeprom, M_DEVBUF);
        sc->eeprom = ((void*)0);
    }
    sc->ioctl_dev = ((void*)0);

    return;
}
