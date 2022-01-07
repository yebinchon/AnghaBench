
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bxe_softc {TYPE_1__* ioctl_dev; int * eeprom; TYPE_2__* ifp; } ;
struct TYPE_4__ {int if_dunit; } ;
struct TYPE_3__ {struct bxe_softc* si_drv1; } ;


 int BLOGW (struct bxe_softc*,char*) ;
 int BXE_EEPROM_MAX_DATA_LEN ;
 int GID_WHEEL ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int UID_ROOT ;
 int bxe_cdevsw ;
 int free (int *,int ) ;
 int if_name (TYPE_2__*) ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*,int ) ;
 int * malloc (int ,int ,int ) ;

__attribute__((used)) static int
bxe_add_cdev(struct bxe_softc *sc)
{
    sc->eeprom = malloc(BXE_EEPROM_MAX_DATA_LEN, M_DEVBUF, M_NOWAIT);

    if (sc->eeprom == ((void*)0)) {
        BLOGW(sc, "Unable to alloc for eeprom size buffer\n");
        return (-1);
    }

    sc->ioctl_dev = make_dev(&bxe_cdevsw,
                            sc->ifp->if_dunit,
                            UID_ROOT,
                            GID_WHEEL,
                            0600,
                            "%s",
                            if_name(sc->ifp));

    if (sc->ioctl_dev == ((void*)0)) {
        free(sc->eeprom, M_DEVBUF);
        sc->eeprom = ((void*)0);
        return (-1);
    }

    sc->ioctl_dev->si_drv1 = sc;

    return (0);
}
