
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_4__ {int os; int ** domains; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int ocs_domain_t ;


 size_t SLI4_MAX_FCFI ;
 int ocs_log_err (int *,char*,TYPE_1__*) ;
 int ocs_log_test (int ,char*,size_t,size_t) ;

ocs_domain_t *
ocs_hw_domain_get(ocs_hw_t *hw, uint16_t fcfi)
{

 if (hw == ((void*)0)) {
  ocs_log_err(((void*)0), "bad parameter hw=%p\n", hw);
  return ((void*)0);
 }

 if (fcfi < SLI4_MAX_FCFI) {
  return hw->domains[fcfi];
 } else {
  ocs_log_test(hw->os, "FCFI %#x out of range (max %#x)\n",
    fcfi, SLI4_MAX_FCFI);
  return ((void*)0);
 }
}
