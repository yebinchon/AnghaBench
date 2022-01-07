
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_pri_vector {int pv_dport_id; int pv_dbridge_id; } ;


 scalar_t__ INFO_BETTER ;
 scalar_t__ bstp_info_cmp (struct bstp_pri_vector*,struct bstp_pri_vector*) ;
 scalar_t__ bstp_same_bridgeid (int ,int ) ;

__attribute__((used)) static int
bstp_info_superior(struct bstp_pri_vector *pv,
    struct bstp_pri_vector *cpv)
{
 if (bstp_info_cmp(pv, cpv) == INFO_BETTER ||
     (bstp_same_bridgeid(pv->pv_dbridge_id, cpv->pv_dbridge_id) &&
     (cpv->pv_dport_id & 0xfff) == (pv->pv_dport_id & 0xfff)))
  return (1);
 return (0);
}
