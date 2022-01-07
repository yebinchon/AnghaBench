
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_softc {int hn_caps; int hn_nvs_ver; int hn_ifp; int hn_ndis_ver; int hn_dev; } ;


 int ENXIO ;
 int HN_CAP_HASHVAL ;
 int HN_NDIS_VERSION_6_1 ;
 int HN_NDIS_VERSION_6_30 ;
 int HN_NDIS_VERSION_MAJOR (int ) ;
 int HN_NDIS_VERSION_MINOR (int ) ;
 int HN_NVS_VERSION_4 ;
 int HN_NVS_VERSION_5 ;
 scalar_t__ bootverbose ;
 scalar_t__ device_is_attached (int ) ;
 int hn_nvs_doinit (struct hn_softc*,int ) ;
 int * hn_nvs_version ;
 int if_printf (int ,char*,...) ;
 int nitems (int *) ;

__attribute__((used)) static int
hn_nvs_init(struct hn_softc *sc)
{
 int i, error;

 if (device_is_attached(sc->hn_dev)) {



  if (bootverbose) {
   if_printf(sc->hn_ifp, "reinit NVS version 0x%x, "
       "NDIS version %u.%u\n", sc->hn_nvs_ver,
       HN_NDIS_VERSION_MAJOR(sc->hn_ndis_ver),
       HN_NDIS_VERSION_MINOR(sc->hn_ndis_ver));
  }

  error = hn_nvs_doinit(sc, sc->hn_nvs_ver);
  if (error) {
   if_printf(sc->hn_ifp, "reinit NVS version 0x%x "
       "failed: %d\n", sc->hn_nvs_ver, error);
   return (error);
  }
  goto done;
 }




 for (i = 0; i < nitems(hn_nvs_version); ++i) {
  error = hn_nvs_doinit(sc, hn_nvs_version[i]);
  if (!error) {
   sc->hn_nvs_ver = hn_nvs_version[i];


   sc->hn_ndis_ver = HN_NDIS_VERSION_6_30;
   if (sc->hn_nvs_ver <= HN_NVS_VERSION_4)
    sc->hn_ndis_ver = HN_NDIS_VERSION_6_1;

   if (bootverbose) {
    if_printf(sc->hn_ifp, "NVS version 0x%x, "
        "NDIS version %u.%u\n", sc->hn_nvs_ver,
        HN_NDIS_VERSION_MAJOR(sc->hn_ndis_ver),
        HN_NDIS_VERSION_MINOR(sc->hn_ndis_ver));
   }
   goto done;
  }
 }
 if_printf(sc->hn_ifp, "no NVS available\n");
 return (ENXIO);

done:
 if (sc->hn_nvs_ver >= HN_NVS_VERSION_5)
  sc->hn_caps |= HN_CAP_HASHVAL;
 return (0);
}
