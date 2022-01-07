
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_wr_opcode { ____Placeholder_ib_wr_opcode } ib_wr_opcode ;
typedef enum ib_wc_opcode { ____Placeholder_ib_wc_opcode } ib_wc_opcode ;


 int IB_WC_COMP_SWAP ;
 int IB_WC_FAST_REG_MR ;
 int IB_WC_FETCH_ADD ;
 int IB_WC_LOCAL_INV ;
 int IB_WC_RDMA_READ ;
 int IB_WC_RDMA_WRITE ;
 int IB_WC_REG_MR ;
 int IB_WC_SEND ;
__attribute__((used)) static enum ib_wc_opcode
qlnxr_ib_to_wc_opcode(enum ib_wr_opcode opcode)
{
 switch (opcode) {
 case 133:
 case 132:
  return IB_WC_RDMA_WRITE;
 case 129:
 case 130:
 case 128:
  return IB_WC_SEND;
 case 134:
  return IB_WC_RDMA_READ;
 case 138:
  return IB_WC_COMP_SWAP;
 case 137:
  return IB_WC_FETCH_ADD;





 case 136:
  return IB_WC_FAST_REG_MR;


 case 135:
  return IB_WC_LOCAL_INV;
 default:
  return IB_WC_SEND;
 }
}
