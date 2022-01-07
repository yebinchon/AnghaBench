
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {int hlm; } ;
struct TYPE_7__ {TYPE_1__ flag; } ;
struct TYPE_8__ {int high_login_mode; TYPE_2__ features; } ;
struct TYPE_9__ {TYPE_3__ config; int os; } ;
typedef TYPE_4__ sli4_t ;
typedef int int32_t ;


 int FALSE ;
 int TRUE ;
 int ocs_log_test (int ,char*) ;

__attribute__((used)) static inline int32_t
sli_set_hlm(sli4_t *sli4, uint32_t value)
{
 if (value && !sli4->config.features.flag.hlm) {
  ocs_log_test(sli4->os, "HLM not supported\n");
  return -1;
 }

 sli4->config.high_login_mode = value != 0 ? TRUE : FALSE;

 return 0;
}
