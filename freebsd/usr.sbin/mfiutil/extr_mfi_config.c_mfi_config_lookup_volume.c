
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {scalar_t__ target_id; } ;
struct TYPE_5__ {TYPE_1__ v; } ;
struct TYPE_6__ {TYPE_2__ ld; } ;
struct mfi_ld_config {TYPE_3__ properties; } ;
struct mfi_config_data {int array_count; int array_size; int log_drv_count; int log_drv_size; scalar_t__ array; } ;



__attribute__((used)) static struct mfi_ld_config *
mfi_config_lookup_volume(struct mfi_config_data *config, uint8_t target_id)
{
 struct mfi_ld_config *ld;
 char *p;
 int i;

 p = (char *)config->array + config->array_count * config->array_size;
 for (i = 0; i < config->log_drv_count; i++) {
  ld = (struct mfi_ld_config *)p;
  if (ld->properties.ld.v.target_id == target_id)
   return (ld);
  p += config->log_drv_size;
 }

 return (((void*)0));
}
