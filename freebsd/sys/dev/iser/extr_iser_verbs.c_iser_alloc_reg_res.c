
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_reg_resources {int mr_valid; int mr; } ;
struct ib_pd {int dummy; } ;
struct ib_device {int dummy; } ;


 int IB_MR_TYPE_MEM_REG ;
 scalar_t__ ISCSI_ISER_SG_TABLESIZE ;
 int ISER_ERR (char*,int) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ib_alloc_mr (struct ib_pd*,int ,scalar_t__) ;

__attribute__((used)) static int
iser_alloc_reg_res(struct ib_device *ib_device,
     struct ib_pd *pd,
     struct iser_reg_resources *res)
{
 int ret;

 res->mr = ib_alloc_mr(pd, IB_MR_TYPE_MEM_REG, ISCSI_ISER_SG_TABLESIZE + 1);
 if (IS_ERR(res->mr)) {
  ret = -PTR_ERR(res->mr);
  ISER_ERR("Failed to allocate  fast reg mr err=%d", ret);
  return (ret);
 }
 res->mr_valid = 1;

 return (0);
}
