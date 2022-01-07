
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int port; scalar_t__ b_update_port; } ;
struct TYPE_3__ {int port; scalar_t__ b_update_port; } ;
struct ecore_tunnel_info {TYPE_2__ vxlan_port; TYPE_1__ geneve_port; } ;



__attribute__((used)) static void ecore_set_tunn_ports(struct ecore_tunnel_info *p_tun,
     struct ecore_tunnel_info *p_src)
{
 p_tun->geneve_port.b_update_port = p_src->geneve_port.b_update_port;
 p_tun->vxlan_port.b_update_port = p_src->vxlan_port.b_update_port;

 if (p_src->geneve_port.b_update_port)
  p_tun->geneve_port.port = p_src->geneve_port.port;

 if (p_src->vxlan_port.b_update_port)
  p_tun->vxlan_port.port = p_src->vxlan_port.port;
}
