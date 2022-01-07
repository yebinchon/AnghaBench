
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;


 int BLOGE (struct bxe_softc*,char*,int) ;
 int BXE_NOMCP (struct bxe_softc*) ;
 int bxe_common_init_phy (struct bxe_softc*) ;
 int bxe_init_hw_common (struct bxe_softc*) ;

__attribute__((used)) static int
bxe_init_hw_common_chip(struct bxe_softc *sc)
{
    int rc = bxe_init_hw_common(sc);

    if (rc) {
        BLOGE(sc, "bxe_init_hw_common failed rc=%d\n", rc);
        return (rc);
    }


    if (!BXE_NOMCP(sc)) {
        bxe_common_init_phy(sc);
    }

    return (0);
}
