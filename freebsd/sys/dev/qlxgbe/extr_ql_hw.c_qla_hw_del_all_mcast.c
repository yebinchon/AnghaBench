
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qla_mcast_t ;
struct TYPE_5__ {scalar_t__ nmcast; int mcast; } ;
struct TYPE_6__ {TYPE_1__ hw; } ;
typedef TYPE_2__ qla_host_t ;


 int Q8_MAX_NUM_MULTICAST_ADDRS ;
 int bzero (int ,int) ;
 int qla_hw_all_mcast (TYPE_2__*,int ) ;

int
qla_hw_del_all_mcast(qla_host_t *ha)
{
 int ret;

 ret = qla_hw_all_mcast(ha, 0);

 bzero(ha->hw.mcast, (sizeof (qla_mcast_t) * Q8_MAX_NUM_MULTICAST_ADDRS));
 ha->hw.nmcast = 0;

 return (ret);
}
