
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_reg_resources {int mr; } ;


 int ib_dereg_mr (int ) ;

__attribute__((used)) static void
iser_free_reg_res(struct iser_reg_resources *rsc)
{
 ib_dereg_mr(rsc->mr);
}
