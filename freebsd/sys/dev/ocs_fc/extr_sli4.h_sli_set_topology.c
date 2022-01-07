
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int topology; } ;
struct TYPE_5__ {int os; TYPE_1__ config; } ;
typedef TYPE_2__ sli4_t ;
typedef int int32_t ;






 int ocs_log_test (int ,char*,int) ;

__attribute__((used)) static inline int32_t
sli_set_topology(sli4_t *sli4, uint32_t value)
{
 int32_t rc = 0;

 switch (value) {
 case 130:
 case 131:
 case 128:
 case 129:
  sli4->config.topology = value;
  break;
 default:
  ocs_log_test(sli4->os, "unsupported topology %#x\n", value);
  rc = -1;
 }

 return rc;
}
