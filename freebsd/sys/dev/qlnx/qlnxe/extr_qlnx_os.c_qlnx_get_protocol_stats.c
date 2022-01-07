
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fcs_err; int ucast_tx_pkts; int ucast_rx_pkts; } ;
union ecore_mcp_protocol_stats {TYPE_2__ lan_stats; } ;
struct TYPE_5__ {int tx_ucast_pkts; int rx_ucast_pkts; } ;
struct ecore_eth_stats {TYPE_1__ common; } ;
struct ecore_dev {int dummy; } ;
struct TYPE_7__ {int err_get_proto_invalid_type; } ;
typedef TYPE_3__ qlnx_host_t ;
typedef enum ecore_mcp_protocol_type { ____Placeholder_ecore_mcp_protocol_type } ecore_mcp_protocol_type ;



 int QL_DPRINT1 (TYPE_3__*,char*,int) ;
 int ecore_get_vport_stats (struct ecore_dev*,struct ecore_eth_stats*) ;

void
qlnx_get_protocol_stats(void *cdev, int proto_type, void *proto_stats)
{
 enum ecore_mcp_protocol_type type;
 union ecore_mcp_protocol_stats *stats;
 struct ecore_eth_stats eth_stats;
 qlnx_host_t *ha;

 ha = cdev;
 stats = proto_stats;
 type = proto_type;

        switch (type) {

        case 128:
                ecore_get_vport_stats((struct ecore_dev *)cdev, &eth_stats);
                stats->lan_stats.ucast_rx_pkts = eth_stats.common.rx_ucast_pkts;
                stats->lan_stats.ucast_tx_pkts = eth_stats.common.tx_ucast_pkts;
                stats->lan_stats.fcs_err = -1;
                break;

 default:
  ha->err_get_proto_invalid_type++;

  QL_DPRINT1(ha, "invalid protocol type 0x%x\n", type);
  break;
 }
 return;
}
