
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_softc {int hn_ifp; int hn_ndis_ver; } ;
struct hn_nvs_ndis_init {int nvs_ndis_minor; int nvs_ndis_major; int nvs_type; } ;
typedef int ndis ;


 int HN_NDIS_VERSION_MAJOR (int ) ;
 int HN_NDIS_VERSION_MINOR (int ) ;
 int HN_NVS_TYPE_NDIS_INIT ;
 int hn_nvs_req_send (struct hn_softc*,struct hn_nvs_ndis_init*,int) ;
 int if_printf (int ,char*,int) ;
 int memset (struct hn_nvs_ndis_init*,int ,int) ;

__attribute__((used)) static int
hn_nvs_init_ndis(struct hn_softc *sc)
{
 struct hn_nvs_ndis_init ndis;
 int error;

 memset(&ndis, 0, sizeof(ndis));
 ndis.nvs_type = HN_NVS_TYPE_NDIS_INIT;
 ndis.nvs_ndis_major = HN_NDIS_VERSION_MAJOR(sc->hn_ndis_ver);
 ndis.nvs_ndis_minor = HN_NDIS_VERSION_MINOR(sc->hn_ndis_ver);


 error = hn_nvs_req_send(sc, &ndis, sizeof(ndis));
 if (error)
  if_printf(sc->hn_ifp, "send nvs ndis init failed: %d\n", error);
 return (error);
}
