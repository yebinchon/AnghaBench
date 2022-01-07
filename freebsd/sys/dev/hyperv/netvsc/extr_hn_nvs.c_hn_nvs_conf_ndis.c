
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_softc {scalar_t__ hn_nvs_ver; int hn_caps; int hn_ifp; } ;
struct hn_nvs_ndis_conf {int nvs_caps; scalar_t__ nvs_mtu; int nvs_type; } ;
typedef int conf ;


 scalar_t__ ETHER_HDR_LEN ;
 int HN_CAP_MTU ;
 int HN_CAP_VLAN ;
 int HN_NVS_NDIS_CONF_SRIOV ;
 int HN_NVS_NDIS_CONF_VLAN ;
 int HN_NVS_TYPE_NDIS_CONF ;
 scalar_t__ HN_NVS_VERSION_5 ;
 scalar_t__ bootverbose ;
 int hn_nvs_req_send (struct hn_softc*,struct hn_nvs_ndis_conf*,int) ;
 int if_printf (int ,char*,...) ;
 int memset (struct hn_nvs_ndis_conf*,int ,int) ;

__attribute__((used)) static int
hn_nvs_conf_ndis(struct hn_softc *sc, int mtu)
{
 struct hn_nvs_ndis_conf conf;
 int error;

 memset(&conf, 0, sizeof(conf));
 conf.nvs_type = HN_NVS_TYPE_NDIS_CONF;
 conf.nvs_mtu = mtu + ETHER_HDR_LEN;
 conf.nvs_caps = HN_NVS_NDIS_CONF_VLAN;
 if (sc->hn_nvs_ver >= HN_NVS_VERSION_5)
  conf.nvs_caps |= HN_NVS_NDIS_CONF_SRIOV;


 error = hn_nvs_req_send(sc, &conf, sizeof(conf));
 if (error) {
  if_printf(sc->hn_ifp, "send nvs ndis conf failed: %d\n", error);
  return (error);
 }

 if (bootverbose)
  if_printf(sc->hn_ifp, "nvs ndis conf done\n");
 sc->hn_caps |= HN_CAP_MTU | HN_CAP_VLAN;
 return (0);
}
