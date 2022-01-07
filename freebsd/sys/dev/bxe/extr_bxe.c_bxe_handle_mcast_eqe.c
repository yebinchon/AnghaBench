
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ecore_mcast_ramrod_params {TYPE_1__* mcast_obj; } ;
struct TYPE_4__ {int (* clear_pending ) (TYPE_2__*) ;} ;
struct TYPE_3__ {scalar_t__ (* check_pending ) (TYPE_1__*) ;TYPE_2__ raw; } ;
struct bxe_softc {TYPE_1__ mcast_obj; } ;
typedef int rparam ;


 int BLOGD (struct bxe_softc*,int ,char*,int) ;
 int BXE_MCAST_LOCK (struct bxe_softc*) ;
 int BXE_MCAST_UNLOCK (struct bxe_softc*) ;
 int DBG_SP ;
 int ECORE_MCAST_CMD_CONT ;
 int ecore_config_mcast (struct bxe_softc*,struct ecore_mcast_ramrod_params*,int ) ;
 int memset (struct ecore_mcast_ramrod_params*,int ,int) ;
 int stub1 (TYPE_2__*) ;
 scalar_t__ stub2 (TYPE_1__*) ;

__attribute__((used)) static void
bxe_handle_mcast_eqe(struct bxe_softc *sc)
{
    struct ecore_mcast_ramrod_params rparam;
    int rc;

    memset(&rparam, 0, sizeof(rparam));

    rparam.mcast_obj = &sc->mcast_obj;

    BXE_MCAST_LOCK(sc);


    sc->mcast_obj.raw.clear_pending(&sc->mcast_obj.raw);


    if (sc->mcast_obj.check_pending(&sc->mcast_obj)) {
        rc = ecore_config_mcast(sc, &rparam, ECORE_MCAST_CMD_CONT);
        if (rc < 0) {
            BLOGD(sc, DBG_SP,
                "ERROR: Failed to send pending mcast commands (%d)\n", rc);
        }
    }

    BXE_MCAST_UNLOCK(sc);
}
