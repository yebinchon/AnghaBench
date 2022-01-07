
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* rxri; void* rxseq; int hlm; } ;
struct TYPE_10__ {TYPE_1__ flag; } ;
struct TYPE_8__ {TYPE_5__ features; int high_login_mode; scalar_t__ has_extents; } ;
struct TYPE_9__ {TYPE_2__ config; int os; } ;
typedef TYPE_3__ sli4_t ;
typedef int int32_t ;


 void* FALSE ;
 int ocs_log_test (int ,char*) ;
 scalar_t__ sli_request_features (TYPE_3__*,TYPE_5__*,void*) ;

int32_t
sli_init(sli4_t *sli4)
{

 if (sli4->config.has_extents) {
                                          ;
  ocs_log_test(sli4->os, "XXX need to implement extent allocation\n");
  return -1;
 }

 sli4->config.features.flag.hlm = sli4->config.high_login_mode;
 sli4->config.features.flag.rxseq = FALSE;
 sli4->config.features.flag.rxri = FALSE;

 if (sli_request_features(sli4, &sli4->config.features, FALSE)) {
  return -1;
 }

 return 0;
}
