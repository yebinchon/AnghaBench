
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ecore_hwfn {TYPE_1__* vf_iov_info; } ;
struct ecore_bulletin_content {int geneve_udp_port; int vxlan_udp_port; } ;
struct TYPE_2__ {struct ecore_bulletin_content bulletin_shadow; } ;



void ecore_vf_bulletin_get_udp_ports(struct ecore_hwfn *p_hwfn,
         u16 *p_vxlan_port,
         u16 *p_geneve_port)
{
 struct ecore_bulletin_content *p_bulletin;

 p_bulletin = &p_hwfn->vf_iov_info->bulletin_shadow;

 *p_vxlan_port = p_bulletin->vxlan_udp_port;
 *p_geneve_port = p_bulletin->geneve_udp_port;
}
