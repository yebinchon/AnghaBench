
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iavf_sc {int dummy; } ;
 int iavf_add_ether_filters (struct iavf_sc*) ;
 int iavf_add_vlans (struct iavf_sc*) ;
 int iavf_config_promisc_mode (struct iavf_sc*) ;
 int iavf_config_rss_key (struct iavf_sc*) ;
 int iavf_config_rss_lut (struct iavf_sc*) ;
 int iavf_configure_queues (struct iavf_sc*) ;
 int iavf_del_ether_filters (struct iavf_sc*) ;
 int iavf_del_vlans (struct iavf_sc*) ;
 int iavf_disable_queues (struct iavf_sc*) ;
 int iavf_enable_queues (struct iavf_sc*) ;
 int iavf_map_queues (struct iavf_sc*) ;
 int iavf_set_rss_hena (struct iavf_sc*) ;

int
ixl_vc_send_cmd(struct iavf_sc *sc, uint32_t request)
{

 switch (request) {
 case 129:
  return iavf_map_queues(sc);

 case 139:
  return iavf_add_ether_filters(sc);

 case 138:
  return iavf_add_vlans(sc);

 case 133:
  return iavf_del_ether_filters(sc);

 case 132:
  return iavf_del_vlans(sc);

 case 136:
  return iavf_configure_queues(sc);

 case 131:
  return iavf_disable_queues(sc);

 case 130:
  return iavf_enable_queues(sc);

 case 135:
  return iavf_config_rss_key(sc);

 case 128:
  return iavf_set_rss_hena(sc);

 case 134:
  return iavf_config_rss_lut(sc);

 case 137:
  return iavf_config_promisc_mode(sc);
 }

 return (0);
}
