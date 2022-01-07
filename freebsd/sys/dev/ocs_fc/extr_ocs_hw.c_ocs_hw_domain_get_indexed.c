
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_5__ {int os; int * fcf_index_fcfi; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int ocs_domain_t ;


 size_t SLI4_MAX_FCF_INDEX ;
 int * ocs_hw_domain_get (TYPE_1__*,int ) ;
 int ocs_log_err (int *,char*,TYPE_1__*) ;
 int ocs_log_test (int ,char*,size_t,size_t) ;

__attribute__((used)) static ocs_domain_t *
ocs_hw_domain_get_indexed(ocs_hw_t *hw, uint16_t fcf_index)
{

 if (hw == ((void*)0)) {
  ocs_log_err(((void*)0), "bad parameter hw=%p\n", hw);
  return ((void*)0);
 }

 if (fcf_index < SLI4_MAX_FCF_INDEX) {
  return ocs_hw_domain_get(hw, hw->fcf_index_fcfi[fcf_index]);
 } else {
  ocs_log_test(hw->os, "FCF index %d out of range (max %d)\n",
        fcf_index, SLI4_MAX_FCF_INDEX);
  return ((void*)0);
 }
}
