
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mfi_config_data {int array_count; int array_size; int log_drv_count; int log_drv_size; size_t size; int spares_size; struct mfi_config_data* drives; scalar_t__ array; scalar_t__ spares_count; int drive_count; } ;
struct TYPE_5__ {struct mfi_config_data target_id; } ;
struct TYPE_6__ {TYPE_1__ v; } ;
struct TYPE_7__ {TYPE_2__ ld; } ;
struct mfi_ld_config {TYPE_3__ properties; } ;
struct mfi_array {struct mfi_config_data array_ref; } ;
struct config_id_state {int array_ref; int target_id; int array_count; int log_drv_count; struct mfi_config_data* arrays; struct mfi_config_data* volumes; } ;
struct array_info {int array_count; int array_size; int log_drv_count; int log_drv_size; size_t size; int spares_size; struct array_info* drives; scalar_t__ array; scalar_t__ spares_count; int drive_count; } ;
typedef int state ;
struct TYPE_8__ {int raid_type; int * name; } ;


 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int MFI_ARRAY_SIZE ;
 int MFI_DCMD_CFG_ADD ;
 int MFI_MAX_SPAN_DEPTH ;
 int O_RDWR ;
 int abort () ;
 int add_spare (int,char**) ;
 int build_array (int,char*,struct mfi_config_data*,struct config_id_state*,int) ;
 int build_volume (char*,int,struct mfi_config_data*,int,long,struct config_id_state*,int) ;
 int bzero (struct config_id_state*,int) ;
 void* calloc (int,size_t) ;
 int close (int) ;
 int compare_int ;
 long dehumanize (int ) ;
 int dump_config (int,struct mfi_config_data*,int *) ;
 int errno ;
 int free (struct mfi_config_data*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ mfi_config_read (int,struct mfi_config_data**) ;
 scalar_t__ mfi_dcmd_command (int,int ,struct mfi_config_data*,size_t,int *,int ,int *) ;
 int mfi_open (int ,int ) ;
 int mfi_reconfig_supported () ;
 int mfi_unit ;
 int optarg ;
 int optind ;
 int parse_array (int,int,char*,struct mfi_config_data*) ;
 int powerof2 (long) ;
 int qsort (struct mfi_config_data*,int,int,int ) ;
 TYPE_4__* raid_type_table ;
 scalar_t__ strcasecmp (int *,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int warn (char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
create_volume(int ac, char **av)
{
 struct mfi_config_data *config;
 struct mfi_array *ar;
 struct mfi_ld_config *ld;
 struct config_id_state state;
 size_t config_size;
 char *p, *cfg_arrays, *cfg_volumes;
 int error, fd, i, raid_type;
 int narrays, nvolumes, arrays_per_volume;
 struct array_info *arrays;
 long stripe_size;



 int ch, verbose;





 if (ac > 1) {
  if (strcmp(av[1], "volume") == 0) {
   av++;
   ac--;
  } else if (strcmp(av[1], "spare") == 0) {
   av++;
   ac--;
   return (add_spare(ac, av));
  }
 }

 if (ac < 2) {
  warnx("create volume: volume type required");
  return (EINVAL);
 }

 bzero(&state, sizeof(state));
 config = ((void*)0);
 arrays = ((void*)0);
 narrays = 0;
 error = 0;

 fd = mfi_open(mfi_unit, O_RDWR);
 if (fd < 0) {
  error = errno;
  warn("mfi_open");
  return (error);
 }

 if (!mfi_reconfig_supported()) {
  warnx("The current mfi(4) driver does not support "
      "configuration changes.");
  error = EOPNOTSUPP;
  goto error;
 }


 raid_type = -1;
 for (i = 0; raid_type_table[i].name != ((void*)0); i++)
  if (strcasecmp(raid_type_table[i].name, av[1]) == 0) {
   raid_type = raid_type_table[i].raid_type;
   break;
  }

 if (raid_type == -1) {
  warnx("Unknown or unsupported volume type %s", av[1]);
  error = EINVAL;
  goto error;
 }


 optind = 2;



 verbose = 0;
 stripe_size = 64 * 1024;

 while ((ch = getopt(ac, av, "ds:v")) != -1) {
  switch (ch) {





  case 's':
   stripe_size = dehumanize(optarg);
   if ((stripe_size < 512) || (!powerof2(stripe_size)))
    stripe_size = 64 * 1024;
   break;
  case 'v':
   verbose = 1;
   break;
  case '?':
  default:
   error = EINVAL;
   goto error;
  }
 }
 ac -= optind;
 av += optind;


 narrays = ac;
 if (narrays == 0) {
  warnx("At least one drive list is required");
  error = EINVAL;
  goto error;
 }
 switch (raid_type) {
 case 134:
 case 133:
 case 131:
 case 129:
 case 136:
  if (narrays != 1) {
   warnx("Only one drive list can be specified");
   error = EINVAL;
   goto error;
  }
  break;
 case 132:
 case 130:
 case 128:
  if (narrays < 1) {
   warnx("RAID10, RAID50, and RAID60 require at least "
       "two drive lists");
   error = EINVAL;
   goto error;
  }
  if (narrays > MFI_MAX_SPAN_DEPTH) {
   warnx("Volume spans more than %d arrays",
       MFI_MAX_SPAN_DEPTH);
   error = EINVAL;
   goto error;
  }
  break;
 }
 arrays = calloc(narrays, sizeof(*arrays));
 if (arrays == ((void*)0)) {
  warnx("malloc failed");
  error = ENOMEM;
  goto error;
 }
 for (i = 0; i < narrays; i++) {
  error = parse_array(fd, raid_type, av[i], &arrays[i]);
  if (error)
   goto error;
 }

 switch (raid_type) {
 case 132:
 case 130:
 case 128:
  for (i = 1; i < narrays; i++) {
   if (arrays[i].drive_count != arrays[0].drive_count) {
    warnx("All arrays must contain the same "
        "number of drives");
    error = EINVAL;
    goto error;
   }
  }
  break;
 }





 if (mfi_config_read(fd, &config) < 0) {
  error = errno;
  warn("Failed to read configuration");
  goto error;
 }
 p = (char *)config->array;
 state.array_ref = 0xffff;
 state.target_id = 0xff;
 state.array_count = config->array_count;
 if (config->array_count > 0) {
  state.arrays = calloc(config->array_count, sizeof(int));
  if (state.arrays == ((void*)0)) {
   warnx("malloc failed");
   error = ENOMEM;
   goto error;
  }
  for (i = 0; i < config->array_count; i++) {
   ar = (struct mfi_array *)p;
   state.arrays[i] = ar->array_ref;
   p += config->array_size;
  }
  qsort(state.arrays, config->array_count, sizeof(int),
      compare_int);
 } else
  state.arrays = ((void*)0);
 state.log_drv_count = config->log_drv_count;
 if (config->log_drv_count) {
  state.volumes = calloc(config->log_drv_count, sizeof(int));
  if (state.volumes == ((void*)0)) {
   warnx("malloc failed");
   error = ENOMEM;
   goto error;
  }
  for (i = 0; i < config->log_drv_count; i++) {
   ld = (struct mfi_ld_config *)p;
   state.volumes[i] = ld->properties.ld.v.target_id;
   p += config->log_drv_size;
  }
  qsort(state.volumes, config->log_drv_count, sizeof(int),
      compare_int);
 } else
  state.volumes = ((void*)0);
 free(config);


 switch (raid_type) {
 case 134:
 case 133:
 case 131:
 case 129:
 case 136:
 case 135:

  nvolumes = narrays;
  break;
 case 132:
 case 130:
 case 128:

  nvolumes = 1;
  break;
 default:

  abort();
 }

 config_size = sizeof(struct mfi_config_data) +
     sizeof(struct mfi_ld_config) * nvolumes + MFI_ARRAY_SIZE * narrays;
 config = calloc(1, config_size);
 if (config == ((void*)0)) {
  warnx("malloc failed");
  error = ENOMEM;
  goto error;
 }
 config->size = config_size;
 config->array_count = narrays;
 config->array_size = MFI_ARRAY_SIZE;
 config->log_drv_count = nvolumes;
 config->log_drv_size = sizeof(struct mfi_ld_config);
 config->spares_count = 0;
 config->spares_size = 40;
 cfg_arrays = (char *)config->array;
 cfg_volumes = cfg_arrays + config->array_size * narrays;


 for (i = 0; i < narrays; i++) {
  build_array(fd, cfg_arrays, &arrays[i], &state, verbose);
  cfg_arrays += config->array_size;
 }


 arrays_per_volume = narrays / nvolumes;
 for (i = 0; i < nvolumes; i++) {
  build_volume(cfg_volumes, arrays_per_volume,
      &arrays[i * arrays_per_volume], raid_type, stripe_size,
      &state, verbose);
  cfg_volumes += config->log_drv_size;
 }







 if (mfi_dcmd_command(fd, MFI_DCMD_CFG_ADD, config, config_size,
     ((void*)0), 0, ((void*)0)) < 0) {
  error = errno;
  warn("Failed to add volume");

 }

error:

 free(config);
 free(state.volumes);
 free(state.arrays);
 if (arrays != ((void*)0)) {
  for (i = 0; i < narrays; i++)
   free(arrays[i].drives);
  free(arrays);
 }
 close(fd);

 return (error);
}
