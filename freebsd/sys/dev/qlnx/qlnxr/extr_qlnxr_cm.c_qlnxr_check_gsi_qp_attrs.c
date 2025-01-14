
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlnxr_dev {int ha; } ;
struct TYPE_2__ {scalar_t__ max_recv_sge; scalar_t__ max_recv_wr; scalar_t__ max_send_wr; } ;
struct ib_qp_init_attr {TYPE_1__ cap; } ;


 int EINVAL ;
 scalar_t__ QLNXR_GSI_MAX_RECV_SGE ;
 scalar_t__ QLNXR_GSI_MAX_RECV_WR ;
 scalar_t__ QLNXR_GSI_MAX_SEND_WR ;
 int QL_DPRINT11 (int ,char*) ;
 int QL_DPRINT12 (int ,char*) ;

__attribute__((used)) static inline int
qlnxr_check_gsi_qp_attrs(struct qlnxr_dev *dev,
  struct ib_qp_init_attr *attrs)
{
 QL_DPRINT12(dev->ha, "enter\n");

 if (attrs->cap.max_recv_sge > QLNXR_GSI_MAX_RECV_SGE) {
  QL_DPRINT11(dev->ha,
   "(attrs->cap.max_recv_sge > QLNXR_GSI_MAX_RECV_SGE)\n");
  return -EINVAL;
 }

 if (attrs->cap.max_recv_wr > QLNXR_GSI_MAX_RECV_WR) {
  QL_DPRINT11(dev->ha,
   "(attrs->cap.max_recv_wr > QLNXR_GSI_MAX_RECV_WR)\n");
  return -EINVAL;
 }

 if (attrs->cap.max_send_wr > QLNXR_GSI_MAX_SEND_WR) {
  QL_DPRINT11(dev->ha,
   "(attrs->cap.max_send_wr > QLNXR_GSI_MAX_SEND_WR)\n");
  return -EINVAL;
 }

 QL_DPRINT12(dev->ha, "exit\n");

 return 0;
}
