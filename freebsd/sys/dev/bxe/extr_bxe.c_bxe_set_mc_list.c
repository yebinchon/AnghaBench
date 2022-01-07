
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_mcast_ramrod_params {int * mcast_obj; int * member_0; } ;
struct bxe_softc {int mcast_obj; } ;


 int BLOGE (struct bxe_softc*,char*,int) ;
 int BXE_MCAST_LOCK (struct bxe_softc*) ;
 int BXE_MCAST_UNLOCK (struct bxe_softc*) ;
 int ECORE_MCAST_CMD_ADD ;
 int ECORE_MCAST_CMD_DEL ;
 int bxe_free_mcast_macs_list (struct ecore_mcast_ramrod_params*) ;
 int bxe_init_mcast_macs_list (struct bxe_softc*,struct ecore_mcast_ramrod_params*) ;
 int ecore_config_mcast (struct bxe_softc*,struct ecore_mcast_ramrod_params*,int ) ;

__attribute__((used)) static int
bxe_set_mc_list(struct bxe_softc *sc)
{
    struct ecore_mcast_ramrod_params rparam = { ((void*)0) };
    int rc = 0;

    rparam.mcast_obj = &sc->mcast_obj;

    BXE_MCAST_LOCK(sc);


    rc = ecore_config_mcast(sc, &rparam, ECORE_MCAST_CMD_DEL);
    if (rc < 0) {
        BLOGE(sc, "Failed to clear multicast configuration: %d\n", rc);

        BXE_MCAST_UNLOCK(sc);
        return (rc);
    }


    rc = bxe_init_mcast_macs_list(sc, &rparam);
    if (rc) {
        BLOGE(sc, "Failed to create mcast MACs list (%d)\n", rc);
        BXE_MCAST_UNLOCK(sc);
        return (rc);
    }


    rc = ecore_config_mcast(sc, &rparam, ECORE_MCAST_CMD_ADD);
    if (rc < 0) {
        BLOGE(sc, "Failed to set new mcast config (%d)\n", rc);
    }

    bxe_free_mcast_macs_list(&rparam);

    BXE_MCAST_UNLOCK(sc);

    return (rc);
}
