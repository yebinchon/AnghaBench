
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ecore_tunn_update_udp_port {int port; scalar_t__ b_update_port; } ;
struct ecore_tunn_update_type {int dummy; } ;
typedef int __le16 ;


 int OSAL_CPU_TO_LE16 (int ) ;
 int __ecore_set_ramrod_tunnel_param (int*,struct ecore_tunn_update_type*) ;

__attribute__((used)) static void
ecore_set_ramrod_tunnel_param(u8 *p_tunn_cls,
         struct ecore_tunn_update_type *tun_type,
         u8 *p_update_port, __le16 *p_port,
         struct ecore_tunn_update_udp_port *p_udp_port)
{
 __ecore_set_ramrod_tunnel_param(p_tunn_cls, tun_type);
 if (p_udp_port->b_update_port) {
  *p_update_port = 1;
  *p_port = OSAL_CPU_TO_LE16(p_udp_port->port);
 }
}
