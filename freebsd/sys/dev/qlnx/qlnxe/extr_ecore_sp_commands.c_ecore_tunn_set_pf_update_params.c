
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pf_update_tunnel_config {int update_rx_pf_clss; int tunnel_clss_ipgre; int tunnel_clss_l2gre; int tunnel_clss_ipgeneve; int geneve_udp_port; int set_geneve_udp_port_flg; int tunnel_clss_l2geneve; int vxlan_udp_port; int set_vxlan_udp_port_flg; int tunnel_clss_vxlan; } ;
struct ecore_tunnel_info {int b_update_rx_cls; int ip_gre; int l2_gre; int ip_geneve; int geneve_port; int l2_geneve; int vxlan_port; int vxlan; } ;
struct ecore_hwfn {TYPE_1__* p_dev; } ;
struct TYPE_2__ {struct ecore_tunnel_info tunnel; } ;


 int __ecore_set_ramrod_tunnel_param (int *,int *) ;
 int ecore_set_pf_update_tunn_mode (struct ecore_tunnel_info*,struct ecore_tunnel_info*,int) ;
 int ecore_set_ramrod_tunnel_param (int *,int *,int *,int *,int *) ;
 int ecore_set_tunn_cls_info (struct ecore_tunnel_info*,struct ecore_tunnel_info*) ;
 int ecore_set_tunn_ports (struct ecore_tunnel_info*,struct ecore_tunnel_info*) ;

__attribute__((used)) static void
ecore_tunn_set_pf_update_params(struct ecore_hwfn *p_hwfn,
    struct ecore_tunnel_info *p_src,
    struct pf_update_tunnel_config *p_tunn_cfg)
{
 struct ecore_tunnel_info *p_tun = &p_hwfn->p_dev->tunnel;

 ecore_set_pf_update_tunn_mode(p_tun, p_src, 0);
 ecore_set_tunn_cls_info(p_tun, p_src);
 ecore_set_tunn_ports(p_tun, p_src);

 ecore_set_ramrod_tunnel_param(&p_tunn_cfg->tunnel_clss_vxlan,
          &p_tun->vxlan,
          &p_tunn_cfg->set_vxlan_udp_port_flg,
          &p_tunn_cfg->vxlan_udp_port,
          &p_tun->vxlan_port);

 ecore_set_ramrod_tunnel_param(&p_tunn_cfg->tunnel_clss_l2geneve,
          &p_tun->l2_geneve,
          &p_tunn_cfg->set_geneve_udp_port_flg,
          &p_tunn_cfg->geneve_udp_port,
          &p_tun->geneve_port);

 __ecore_set_ramrod_tunnel_param(&p_tunn_cfg->tunnel_clss_ipgeneve,
     &p_tun->ip_geneve);

 __ecore_set_ramrod_tunnel_param(&p_tunn_cfg->tunnel_clss_l2gre,
     &p_tun->l2_gre);

 __ecore_set_ramrod_tunnel_param(&p_tunn_cfg->tunnel_clss_ipgre,
     &p_tun->ip_gre);

 p_tunn_cfg->update_rx_pf_clss = p_tun->b_update_rx_cls;
}
