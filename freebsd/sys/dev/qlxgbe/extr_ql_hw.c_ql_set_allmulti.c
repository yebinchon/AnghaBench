
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mac_rcv_mode; } ;
struct TYPE_6__ {TYPE_1__ hw; } ;
typedef TYPE_2__ qla_host_t ;


 int Q8_MBX_MAC_ALL_MULTI_ENABLE ;
 int qla_set_mac_rcv_mode (TYPE_2__*,int ) ;

int
ql_set_allmulti(qla_host_t *ha)
{
 int ret;

 ha->hw.mac_rcv_mode |= Q8_MBX_MAC_ALL_MULTI_ENABLE;
 ret = qla_set_mac_rcv_mode(ha, ha->hw.mac_rcv_mode);
 return (ret);
}
