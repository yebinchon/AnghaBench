
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ecore_tunn_update_type {int tun_cls; } ;



__attribute__((used)) static void
__ecore_set_ramrod_tunnel_param(u8 *p_tunn_cls,
    struct ecore_tunn_update_type *tun_type)
{
 *p_tunn_cls = tun_type->tun_cls;
}
