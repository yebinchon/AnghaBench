
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_info {char* name; int fatal; int * actions; struct intr_details const* details; scalar_t__ flags; void* enable_reg; void* cause_reg; } ;
struct intr_details {int member_0; char* member_1; } ;
struct adapter {int dummy; } ;
typedef int name ;


 int A_MAC_PORT_INT_CAUSE ;
 int A_MAC_PORT_INT_EN ;
 int A_MAC_PORT_PERR_INT_CAUSE ;
 int A_MAC_PORT_PERR_INT_CAUSE_100G ;
 int A_MAC_PORT_PERR_INT_EN ;
 int A_MAC_PORT_PERR_INT_EN_100G ;
 int A_XGMAC_PORT_INT_CAUSE ;
 int A_XGMAC_PORT_INT_EN ;
 scalar_t__ CHELSIO_T5 ;
 scalar_t__ CHELSIO_T6 ;


 void* PORT_REG (int,int ) ;
 void* T5_PORT_REG (int,int ) ;
 scalar_t__ chip_id (struct adapter*) ;
 scalar_t__ is_t4 (struct adapter*) ;
 int snprintf (char*,int,char*,int) ;
 int t4_handle_intr (struct adapter*,struct intr_info*,int ,int) ;

__attribute__((used)) static bool mac_intr_handler(struct adapter *adap, int port, bool verbose)
{
 static const struct intr_details mac_intr_details[] = {
  { 128, "MAC Tx FIFO parity error" },
  { 129, "MAC Rx FIFO parity error" },
  { 0 }
 };
 char name[32];
 struct intr_info ii;
 bool fatal = 0;

 if (is_t4(adap)) {
  snprintf(name, sizeof(name), "XGMAC_PORT%u_INT_CAUSE", port);
  ii.name = &name[0];
  ii.cause_reg = PORT_REG(port, A_XGMAC_PORT_INT_CAUSE);
  ii.enable_reg = PORT_REG(port, A_XGMAC_PORT_INT_EN);
  ii.fatal = 128 | 129;
  ii.flags = 0;
  ii.details = mac_intr_details;
  ii.actions = ((void*)0);
 } else {
  snprintf(name, sizeof(name), "MAC_PORT%u_INT_CAUSE", port);
  ii.name = &name[0];
  ii.cause_reg = T5_PORT_REG(port, A_MAC_PORT_INT_CAUSE);
  ii.enable_reg = T5_PORT_REG(port, A_MAC_PORT_INT_EN);
  ii.fatal = 128 | 129;
  ii.flags = 0;
  ii.details = mac_intr_details;
  ii.actions = ((void*)0);
 }
 fatal |= t4_handle_intr(adap, &ii, 0, verbose);

 if (chip_id(adap) >= CHELSIO_T5) {
  snprintf(name, sizeof(name), "MAC_PORT%u_PERR_INT_CAUSE", port);
  ii.name = &name[0];
  ii.cause_reg = T5_PORT_REG(port, A_MAC_PORT_PERR_INT_CAUSE);
  ii.enable_reg = T5_PORT_REG(port, A_MAC_PORT_PERR_INT_EN);
  ii.fatal = 0;
  ii.flags = 0;
  ii.details = ((void*)0);
  ii.actions = ((void*)0);
  fatal |= t4_handle_intr(adap, &ii, 0, verbose);
 }

 if (chip_id(adap) >= CHELSIO_T6) {
  snprintf(name, sizeof(name), "MAC_PORT%u_PERR_INT_CAUSE_100G", port);
  ii.name = &name[0];
  ii.cause_reg = T5_PORT_REG(port, A_MAC_PORT_PERR_INT_CAUSE_100G);
  ii.enable_reg = T5_PORT_REG(port, A_MAC_PORT_PERR_INT_EN_100G);
  ii.fatal = 0;
  ii.flags = 0;
  ii.details = ((void*)0);
  ii.actions = ((void*)0);
  fatal |= t4_handle_intr(adap, &ii, 0, verbose);
 }

 return (fatal);
}
