
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int ocs_t ;
struct TYPE_5__ {int check_app_tag; } ;
typedef TYPE_1__ ocs_hw_dif_info_t ;
struct TYPE_6__ {int app_tag; } ;
typedef TYPE_2__ ocs_dif_t ;


 int TRUE ;
 scalar_t__ ocs_be16toh (int ) ;
 int ocs_log_debug (int *,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static uint32_t
ocs_scsi_dif_check_app_tag(ocs_t *ocs, ocs_hw_dif_info_t *dif_info, uint16_t exp_app_tag, ocs_dif_t *dif)
{
 if ((dif == ((void*)0)) || !dif_info->check_app_tag) {
  return TRUE;
 }

 ocs_log_debug(ocs, "expected app tag 0x%x,  actual 0x%x\n",
  exp_app_tag, ocs_be16toh(dif->app_tag));

 return (exp_app_tag == ocs_be16toh(dif->app_tag));
}
