
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_eth_tx_pkts_wr {int op_pkd; } ;







 int G_FW_WR_OP (int ) ;
 int be32toh (int ) ;

__attribute__((used)) static inline int
wr_can_update_eq(struct fw_eth_tx_pkts_wr *wr)
{

 switch (G_FW_WR_OP(be32toh(wr->op_pkd))) {
 case 128:
 case 129:
 case 131:
 case 132:
 case 130:
  return (1);
 default:
  return (0);
 }
}
