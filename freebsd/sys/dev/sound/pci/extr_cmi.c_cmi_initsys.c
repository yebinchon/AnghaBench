
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int spdif_enabled; int dev; } ;


 int CTLFLAG_RW ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (int ,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;

__attribute__((used)) static int
cmi_initsys(struct sc_info* sc)
{





 SYSCTL_ADD_INT(device_get_sysctl_ctx(sc->dev),
         SYSCTL_CHILDREN(device_get_sysctl_tree(sc->dev)),
         OID_AUTO, "spdif_enabled", CTLFLAG_RW,
         &sc->spdif_enabled, 0,
         "enable SPDIF output at 44.1 kHz and above");

 return 0;
}
