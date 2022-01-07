
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct miibus_ivars {int ifp; int ifmedia_sts; int ifmedia_upd; } ;
struct mii_data {int mii_phys; int mii_ifp; int mii_media; } ;
struct mii_attach_args {struct mii_data* mii_data; } ;
typedef int device_t ;


 int ENXIO ;
 int IFCAP_LINKSTATE ;
 int IFM_IMASK ;
 int LIST_INIT (int *) ;
 int M_TEMP ;
 int bus_generic_attach (int ) ;
 scalar_t__ device_get_children (int ,int **,int*) ;
 void* device_get_ivars (int ) ;
 struct mii_data* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int free (int *,int ) ;
 int if_setcapabilitiesbit (int ,int ,int ) ;
 int if_setcapenablebit (int ,int ,int ) ;
 int ifmedia_init (int *,int ,int ,int ) ;

__attribute__((used)) static int
miibus_attach(device_t dev)
{
 struct miibus_ivars *ivars;
 struct mii_attach_args *ma;
 struct mii_data *mii;
 device_t *children;
 int i, nchildren;

 mii = device_get_softc(dev);
 if (device_get_children(dev, &children, &nchildren) == 0) {
  for (i = 0; i < nchildren; i++) {
   ma = device_get_ivars(children[i]);
   ma->mii_data = mii;
  }
  free(children, M_TEMP);
 }
 if (nchildren == 0) {
  device_printf(dev, "cannot get children\n");
  return (ENXIO);
 }
 ivars = device_get_ivars(dev);
 ifmedia_init(&mii->mii_media, IFM_IMASK, ivars->ifmedia_upd,
     ivars->ifmedia_sts);
 mii->mii_ifp = ivars->ifp;
 if_setcapabilitiesbit(mii->mii_ifp, IFCAP_LINKSTATE, 0);
 if_setcapenablebit(mii->mii_ifp, IFCAP_LINKSTATE, 0);
 LIST_INIT(&mii->mii_phys);

 return (bus_generic_attach(dev));
}
