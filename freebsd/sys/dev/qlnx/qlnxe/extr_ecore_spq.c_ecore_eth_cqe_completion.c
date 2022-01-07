
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eth_slow_path_rx_cqe {int ramrod_cmd_id; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,int ) ;
 int PROTOCOLID_ETH ;
 int ecore_cqe_completion (struct ecore_hwfn*,struct eth_slow_path_rx_cqe*,int ) ;

enum _ecore_status_t ecore_eth_cqe_completion(struct ecore_hwfn *p_hwfn,
           struct eth_slow_path_rx_cqe *cqe)
{
 enum _ecore_status_t rc;

 rc = ecore_cqe_completion(p_hwfn, cqe, PROTOCOLID_ETH);
 if (rc) {
  DP_NOTICE(p_hwfn, 1,
     "Failed to handle RXQ CQE [cmd 0x%02x]\n",
     cqe->ramrod_cmd_id);
 }

 return rc;
}
