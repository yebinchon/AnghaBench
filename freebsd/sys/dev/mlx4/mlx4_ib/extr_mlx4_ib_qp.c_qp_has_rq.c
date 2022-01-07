
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_qp_init_attr {scalar_t__ qp_type; int srq; } ;


 scalar_t__ IB_QPT_XRC_INI ;
 scalar_t__ IB_QPT_XRC_TGT ;

__attribute__((used)) static int qp_has_rq(struct ib_qp_init_attr *attr)
{
 if (attr->qp_type == IB_QPT_XRC_INI || attr->qp_type == IB_QPT_XRC_TGT)
  return 0;

 return !attr->srq;
}
