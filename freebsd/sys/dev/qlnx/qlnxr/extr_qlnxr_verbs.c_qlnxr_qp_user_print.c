
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int buf_len; int buf_addr; } ;
struct TYPE_3__ {int buf_len; int buf_addr; } ;
struct qlnxr_qp {TYPE_2__ urq; TYPE_1__ usq; } ;
struct qlnxr_dev {int ha; } ;


 int QL_DPRINT12 (int ,char*,struct qlnxr_qp*,int ,int ,int ,int ) ;

__attribute__((used)) static inline void
qlnxr_qp_user_print( struct qlnxr_dev *dev,
 struct qlnxr_qp *qp)
{
 QL_DPRINT12((dev->ha), "qp=%p. sq_addr=0x%llx, sq_len=%zd, "
  "rq_addr=0x%llx, rq_len=%zd\n",
  qp, qp->usq.buf_addr, qp->usq.buf_len, qp->urq.buf_addr,
  qp->urq.buf_len);
 return;
}
