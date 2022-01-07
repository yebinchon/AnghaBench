
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {int * vxl_im6o; int * vxl_im4o; scalar_t__ vxl_mc_ifindex; int * vxl_mc_ifp; } ;


 int M_VXLAN ;
 int free (int *,int ) ;
 int if_rele (int *) ;

__attribute__((used)) static void
vxlan_free_multicast(struct vxlan_softc *sc)
{

 if (sc->vxl_mc_ifp != ((void*)0)) {
  if_rele(sc->vxl_mc_ifp);
  sc->vxl_mc_ifp = ((void*)0);
  sc->vxl_mc_ifindex = 0;
 }

 if (sc->vxl_im4o != ((void*)0)) {
  free(sc->vxl_im4o, M_VXLAN);
  sc->vxl_im4o = ((void*)0);
 }

 if (sc->vxl_im6o != ((void*)0)) {
  free(sc->vxl_im6o, M_VXLAN);
  sc->vxl_im6o = ((void*)0);
 }
}
