
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* rx_cntxt_rsp; } ;
struct TYPE_10__ {TYPE_3__ hw; } ;
typedef TYPE_4__ qla_host_t ;
struct TYPE_7__ {int cntxt_id; } ;
struct TYPE_8__ {TYPE_1__ rx_rsp; } ;


 int Q8_MAC_RCV_RESET_PROMISC_ALLMULTI ;
 int qla_set_mac_rcv_mode (TYPE_4__*,int ,int ) ;

void
qla_reset_promisc_allmulti(qla_host_t *ha)
{
 (void)qla_set_mac_rcv_mode(ha,
  (ha->hw.rx_cntxt_rsp)->rx_rsp.cntxt_id,
  Q8_MAC_RCV_RESET_PROMISC_ALLMULTI);
}
