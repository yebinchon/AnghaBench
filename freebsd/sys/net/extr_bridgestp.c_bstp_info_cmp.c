
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_pri_vector {scalar_t__ pv_root_id; scalar_t__ pv_cost; scalar_t__ pv_dbridge_id; scalar_t__ pv_dport_id; } ;


 int INFO_BETTER ;
 int INFO_SAME ;
 int INFO_WORSE ;

__attribute__((used)) static int
bstp_info_cmp(struct bstp_pri_vector *pv,
    struct bstp_pri_vector *cpv)
{
 if (cpv->pv_root_id < pv->pv_root_id)
  return (INFO_BETTER);
 if (cpv->pv_root_id > pv->pv_root_id)
  return (INFO_WORSE);

 if (cpv->pv_cost < pv->pv_cost)
  return (INFO_BETTER);
 if (cpv->pv_cost > pv->pv_cost)
  return (INFO_WORSE);

 if (cpv->pv_dbridge_id < pv->pv_dbridge_id)
  return (INFO_BETTER);
 if (cpv->pv_dbridge_id > pv->pv_dbridge_id)
  return (INFO_WORSE);

 if (cpv->pv_dport_id < pv->pv_dport_id)
  return (INFO_BETTER);
 if (cpv->pv_dport_id > pv->pv_dport_id)
  return (INFO_WORSE);

 return (INFO_SAME);
}
