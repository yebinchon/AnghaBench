
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int os; void* fip_arg; void* fip; void* link_arg; void* link; } ;
typedef TYPE_1__ sli4_t ;
typedef int sli4_callback_e ;
typedef int int32_t ;




 int SLI4_CB_MAX ;
 int ocs_log_err (int *,char*,TYPE_1__*,int,void*) ;
 int ocs_log_test (int ,char*,int) ;

int32_t
sli_callback(sli4_t *sli4, sli4_callback_e which, void *func, void *arg)
{

 if (!sli4 || !func || (which >= SLI4_CB_MAX)) {
  ocs_log_err(((void*)0), "bad parameter sli4=%p which=%#x func=%p\n",
       sli4, which, func);
  return -1;
 }

 switch (which) {
 case 128:
  sli4->link = func;
  sli4->link_arg = arg;
  break;
 case 129:
  sli4->fip = func;
  sli4->fip_arg = arg;
  break;
 default:
  ocs_log_test(sli4->os, "unknown callback %#x\n", which);
  return -1;
 }

 return 0;
}
