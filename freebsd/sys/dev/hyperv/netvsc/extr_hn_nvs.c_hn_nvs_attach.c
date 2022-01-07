
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_softc {scalar_t__ hn_nvs_ver; int hn_caps; } ;


 int HN_CAP_UDPHASH ;
 scalar_t__ HN_NVS_VERSION_2 ;
 int hn_nvs_conf_ndis (struct hn_softc*,int) ;
 int hn_nvs_conn_chim (struct hn_softc*) ;
 int hn_nvs_conn_rxbuf (struct hn_softc*) ;
 int hn_nvs_disconn_rxbuf (struct hn_softc*) ;
 int hn_nvs_init (struct hn_softc*) ;
 int hn_nvs_init_ndis (struct hn_softc*) ;
 int hyperv_ver_major ;

int
hn_nvs_attach(struct hn_softc *sc, int mtu)
{
 int error;

 if (hyperv_ver_major >= 10) {

  sc->hn_caps |= HN_CAP_UDPHASH;
 }




 error = hn_nvs_init(sc);
 if (error)
  return (error);

 if (sc->hn_nvs_ver >= HN_NVS_VERSION_2) {



  error = hn_nvs_conf_ndis(sc, mtu);
  if (error)
   return (error);
 }




 error = hn_nvs_init_ndis(sc);
 if (error)
  return (error);




 error = hn_nvs_conn_rxbuf(sc);
 if (error)
  return (error);




 error = hn_nvs_conn_chim(sc);
 if (error) {
  hn_nvs_disconn_rxbuf(sc);
  return (error);
 }
 return (0);
}
