
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_softc {int amr_maxio; int amr_dev; int amr_busyslots; int amr_nextslot; int amr_allow_vol_config; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (int ,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
amr_init_sysctl(struct amr_softc *sc)
{

    SYSCTL_ADD_INT(device_get_sysctl_ctx(sc->amr_dev),
 SYSCTL_CHILDREN(device_get_sysctl_tree(sc->amr_dev)),
 OID_AUTO, "allow_volume_configure", CTLFLAG_RW, &sc->amr_allow_vol_config, 0,
 "");
    SYSCTL_ADD_INT(device_get_sysctl_ctx(sc->amr_dev),
 SYSCTL_CHILDREN(device_get_sysctl_tree(sc->amr_dev)),
 OID_AUTO, "nextslot", CTLFLAG_RD, &sc->amr_nextslot, 0,
 "");
    SYSCTL_ADD_INT(device_get_sysctl_ctx(sc->amr_dev),
 SYSCTL_CHILDREN(device_get_sysctl_tree(sc->amr_dev)),
 OID_AUTO, "busyslots", CTLFLAG_RD, &sc->amr_busyslots, 0,
 "");
    SYSCTL_ADD_INT(device_get_sysctl_ctx(sc->amr_dev),
 SYSCTL_CHILDREN(device_get_sysctl_tree(sc->amr_dev)),
 OID_AUTO, "maxio", CTLFLAG_RD, &sc->amr_maxio, 0,
 "");
}
