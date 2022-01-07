
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {int ciss_soft_reset; int ciss_dev; } ;


 int CTLFLAG_RW ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (int ,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
ciss_init_sysctl(struct ciss_softc *sc)
{

    SYSCTL_ADD_INT(device_get_sysctl_ctx(sc->ciss_dev),
 SYSCTL_CHILDREN(device_get_sysctl_tree(sc->ciss_dev)),
 OID_AUTO, "soft_reset", CTLFLAG_RW, &sc->ciss_soft_reset, 0, "");
}
