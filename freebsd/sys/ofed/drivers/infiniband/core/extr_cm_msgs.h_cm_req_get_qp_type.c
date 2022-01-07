
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_req_msg {int offset51; int offset40; } ;
typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;


 int IB_QPT_RC ;
 int IB_QPT_UC ;
 int IB_QPT_XRC_TGT ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static inline enum ib_qp_type cm_req_get_qp_type(struct cm_req_msg *req_msg)
{
 u8 transport_type = (u8) (be32_to_cpu(req_msg->offset40) & 0x06) >> 1;
 switch(transport_type) {
 case 0: return IB_QPT_RC;
 case 1: return IB_QPT_UC;
 case 3:
  switch (req_msg->offset51 & 0x7) {
  case 1: return IB_QPT_XRC_TGT;
  default: return 0;
  }
 default: return 0;
 }
}
