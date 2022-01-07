
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct mfi_spare {int array_count; int * array_ref; int spare_type; int array_size; scalar_t__ array; int ref; } ;
struct mfi_pd_info {scalar_t__ fw_state; scalar_t__ coerced_size; int ref; } ;
struct TYPE_3__ {int span_depth; } ;
struct mfi_ld_config {TYPE_2__* span; TYPE_1__ params; } ;
struct mfi_config_data {int array_count; int * array_ref; int spare_type; int array_size; scalar_t__ array; int ref; } ;
struct mfi_array {scalar_t__ size; int array_ref; } ;
struct TYPE_4__ {int array_ref; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int MFI_DCMD_CFG_MAKE_SPARE ;
 scalar_t__ MFI_PD_STATE_UNCONFIGURED_GOOD ;
 int MFI_SPARE_DEDICATED ;
 int O_RDWR ;
 int bzero (struct mfi_spare*,int) ;
 int close (int) ;
 int errno ;
 int free (struct mfi_spare*) ;
 struct mfi_spare* malloc (int) ;
 struct mfi_array* mfi_config_lookup_array (struct mfi_spare*,int ) ;
 struct mfi_ld_config* mfi_config_lookup_volume (struct mfi_spare*,int ) ;
 scalar_t__ mfi_config_read (int,struct mfi_spare**) ;
 scalar_t__ mfi_dcmd_command (int,int ,struct mfi_spare*,int,int *,int ,int *) ;
 int mfi_lookup_drive (int,char*,int *) ;
 scalar_t__ mfi_lookup_volume (int,char*,int *) ;
 int mfi_open (int ,int ) ;
 scalar_t__ mfi_pd_get_info (int,int ,struct mfi_pd_info*,int *) ;
 int mfi_unit ;
 int warn (char*,...) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
add_spare(int ac, char **av)
{
 struct mfi_pd_info info;
 struct mfi_config_data *config;
 struct mfi_array *ar;
 struct mfi_ld_config *ld;
 struct mfi_spare *spare;
 uint16_t device_id;
 uint8_t target_id;
 char *p;
 int error, fd, i;

 if (ac < 2) {
  warnx("add spare: drive required");
  return (EINVAL);
 }

 fd = mfi_open(mfi_unit, O_RDWR);
 if (fd < 0) {
  error = errno;
  warn("mfi_open");
  return (error);
 }

 config = ((void*)0);
 spare = ((void*)0);
 error = mfi_lookup_drive(fd, av[1], &device_id);
 if (error)
  goto error;

 if (mfi_pd_get_info(fd, device_id, &info, ((void*)0)) < 0) {
  error = errno;
  warn("Failed to fetch drive info");
  goto error;
 }

 if (info.fw_state != MFI_PD_STATE_UNCONFIGURED_GOOD) {
  warnx("Drive %u is not available", device_id);
  error = EINVAL;
  goto error;
 }

 if (ac > 2) {
  if (mfi_lookup_volume(fd, av[2], &target_id) < 0) {
   error = errno;
   warn("Invalid volume %s", av[2]);
   goto error;
  }
 }

 if (mfi_config_read(fd, &config) < 0) {
  error = errno;
  warn("Failed to read configuration");
  goto error;
 }

 spare = malloc(sizeof(struct mfi_spare) + sizeof(uint16_t) *
     config->array_count);
 if (spare == ((void*)0)) {
  warnx("malloc failed");
  error = ENOMEM;
  goto error;
 }
 bzero(spare, sizeof(struct mfi_spare));
 spare->ref = info.ref;

 if (ac == 2) {

  p = (char *)config->array;
  for (i = 0; i < config->array_count; i++) {
   ar = (struct mfi_array *)p;
   if (ar->size > info.coerced_size) {
    warnx("Spare isn't large enough for array %u",
        ar->array_ref);
    error = EINVAL;
    goto error;
   }
   p += config->array_size;
  }
  spare->array_count = 0;
 } else {




  ld = mfi_config_lookup_volume(config, target_id);
  if (ld == ((void*)0)) {
   warnx("Did not find volume %d", target_id);
   error = EINVAL;
   goto error;
  }

  spare->spare_type |= MFI_SPARE_DEDICATED;
  spare->array_count = ld->params.span_depth;
  for (i = 0; i < ld->params.span_depth; i++) {
   ar = mfi_config_lookup_array(config,
       ld->span[i].array_ref);
   if (ar == ((void*)0)) {
    warnx("Missing array; inconsistent config?");
    error = ENXIO;
    goto error;
   }
   if (ar->size > info.coerced_size) {
    warnx("Spare isn't large enough for array %u",
        ar->array_ref);
    error = EINVAL;
    goto error;
   }
   spare->array_ref[i] = ar->array_ref;
  }
 }

 if (mfi_dcmd_command(fd, MFI_DCMD_CFG_MAKE_SPARE, spare,
     sizeof(struct mfi_spare) + sizeof(uint16_t) * spare->array_count,
     ((void*)0), 0, ((void*)0)) < 0) {
  error = errno;
  warn("Failed to assign spare");

 }

error:
 free(spare);
 free(config);
 close(fd);

 return (error);
}
