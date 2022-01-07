
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int sgl_pre_registered; scalar_t__ sgl_pre_registration_required; } ;
struct TYPE_5__ {TYPE_1__ config; int os; } ;
typedef TYPE_2__ sli4_t ;
typedef int int32_t ;


 int FALSE ;
 int TRUE ;
 int ocs_log_test (int ,char*) ;

__attribute__((used)) static inline int32_t
sli_set_sgl_preregister(sli4_t *sli4, uint32_t value)
{
 if ((value == 0) && sli4->config.sgl_pre_registration_required) {
  ocs_log_test(sli4->os, "SGL pre-registration required\n");
  return -1;
 }

 sli4->config.sgl_pre_registered = value != 0 ? TRUE : FALSE;

 return 0;
}
