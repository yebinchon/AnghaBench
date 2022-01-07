
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {int * vxl_sysctl_node; int vxl_sysctl_ctx; } ;


 int sysctl_ctx_free (int *) ;

__attribute__((used)) static void
vxlan_sysctl_destroy(struct vxlan_softc *sc)
{

 sysctl_ctx_free(&sc->vxl_sysctl_ctx);
 sc->vxl_sysctl_node = ((void*)0);
}
