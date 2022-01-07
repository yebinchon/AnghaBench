
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {int span_depth; int primary_raid_level; int stripe_size; } ;
struct mfi_ld_config {TYPE_2__* span; TYPE_1__ params; } ;
struct mfi_config_data {int array_count; int log_drv_count; int spares_count; int array_size; int log_drv_size; scalar_t__ array; } ;
struct mfi_array {int num_drives; TYPE_5__* pd; } ;
typedef int stripe ;
typedef int size ;
typedef int mbox ;
struct TYPE_8__ {int device_id; } ;
struct TYPE_9__ {TYPE_3__ v; } ;
struct TYPE_10__ {int fw_state; TYPE_4__ ref; } ;
struct TYPE_7__ {int num_blocks; int array_ref; } ;


 int HN_AUTOSCALE ;
 int HN_B ;
 int HN_DECIMAL ;
 int HN_NOSPACE ;
 scalar_t__ MFI_DCMD_CFG_FOREIGN_PREVIEW ;
 int bzero (int*,int) ;
 int close (int) ;
 int dump_config (int,struct mfi_config_data*,char*) ;
 int errno ;
 int format_stripe (char*,int,int ) ;
 int free (struct mfi_config_data*) ;
 int humanize_number (char*,int,int,char*,int ,int) ;
 scalar_t__ mfi_config_read_opcode (int,scalar_t__,struct mfi_config_data**,int*,int) ;
 char* mfi_pdstate (int ) ;
 char* mfi_raid_level (int ,int) ;
 int printf (char*,...) ;
 int sprintf (char*,char*,int) ;
 int warn (char*,int) ;

__attribute__((used)) static int
foreign_show_cfg(int fd, uint32_t opcode, uint8_t cfgidx, int diagnostic)
{
 struct mfi_config_data *config;
 char prefix[64];
 int error;
 uint8_t mbox[4];

 bzero(mbox, sizeof(mbox));
 mbox[0] = cfgidx;
 if (mfi_config_read_opcode(fd, opcode, &config, mbox, sizeof(mbox)) < 0) {
  error = errno;
  warn("Failed to get foreign config %d", error);
  close(fd);
  return (error);
 }

 if (opcode == MFI_DCMD_CFG_FOREIGN_PREVIEW)
  sprintf(prefix, "Foreign configuration preview %d", cfgidx);
 else
  sprintf(prefix, "Foreign configuration %d", cfgidx);






 if (diagnostic)
  dump_config(fd, config, prefix);
 else {
  char *ld_list;
  int i;

  ld_list = (char *)(config->array);

         printf("%s: %d arrays, %d volumes, %d spares\n", prefix,
         config->array_count, config->log_drv_count,
         config->spares_count);


  for (i = 0; i < config->array_count; i++)
    ld_list += config->array_size;

  for (i = 0; i < config->log_drv_count; i++) {
          const char *level;
          char size[6], stripe[5];
   struct mfi_ld_config *ld;

   ld = (struct mfi_ld_config *)ld_list;

          format_stripe(stripe, sizeof(stripe),
               ld->params.stripe_size);






          level = mfi_raid_level(ld->params.primary_raid_level,
                 (ld->params.span_depth - 1));

          humanize_number(size, sizeof(size), ld->span[0].num_blocks * 512,
               "", HN_AUTOSCALE, HN_B | HN_NOSPACE | HN_DECIMAL);

   printf(" ID%d ", i);
                printf("(%6s) %-8s |",
    size, level);
   printf("volume spans %d %s\n", ld->params.span_depth,
       (ld->params.span_depth > 1) ? "arrays" : "array");
   for (int j = 0; j < ld->params.span_depth; j++) {
    char *ar_list;
    struct mfi_array *ar;
    uint16_t device_id;

    printf("      array %u @ ", ld->span[j].array_ref);
           humanize_number(size, sizeof(size), ld->span[j].num_blocks * 512,
                "", HN_AUTOSCALE, HN_B | HN_NOSPACE | HN_DECIMAL);

    printf("(%6s)\n",size);
    ar_list = (char *)config->array + (ld->span[j].array_ref * config->array_size);

    ar = (struct mfi_array *)ar_list;
    for (int k = 0; k < ar->num_drives; k++) {
     device_id = ar->pd[k].ref.v.device_id;
     if (device_id == 0xffff)
      printf("        drive MISSING\n");
     else {
      printf("        drive %u %s\n", device_id,
           mfi_pdstate(ar->pd[k].fw_state));
     }
    }

   }
   ld_list += config->log_drv_size;
  }
 }

 free(config);

 return (0);
}
