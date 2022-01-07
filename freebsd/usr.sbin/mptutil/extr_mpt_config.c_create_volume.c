
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int PageLength; } ;
struct volume_info {int VolumeID; int VolumeBus; TYPE_1__ Header; } ;
struct config_id_state {int target_id; struct volume_info* ioc2; int * list; struct volume_info* sdisks; int nsdisks; } ;
struct TYPE_4__ {int raid_type; int * name; } ;
typedef struct volume_info CONFIG_PAGE_RAID_VOL_0 ;


 int EINVAL ;
 int ENOMEM ;
 int MPI_RAID_ACTION_ADATA_DO_NOT_SYNC ;
 int MPI_RAID_ACTION_CREATE_VOLUME ;
 int add_drives (int,struct volume_info*,int) ;
 struct volume_info* build_volume (int,struct volume_info*,int,long,struct config_id_state*,int) ;
 struct volume_info* calloc (int,int) ;
 int close (int) ;
 long dehumanize (int ) ;
 int dump_config (struct volume_info*) ;
 int errno ;
 int free (struct volume_info*) ;
 int getopt (int,char**,char*) ;
 int mpt_fetch_disks (int,int *,struct volume_info**) ;
 int mpt_free_pd_list (int *) ;
 int mpt_open (int ) ;
 int * mpt_pd_list (int) ;
 int mpt_raid_action (int,int ,int ,int ,int ,int ,struct volume_info*,int,int *,int *,int ,int *,int *,int) ;
 struct volume_info* mpt_read_ioc_page (int,int,int *) ;
 int mpt_rescan_bus (int ,int ) ;
 int mpt_unit ;
 int optarg ;
 int optind ;
 int parse_volume (int,int,struct config_id_state*,char*,struct volume_info*) ;
 int powerof2 (long) ;
 TYPE_2__* raid_type_table ;
 scalar_t__ strcasecmp (int *,char*) ;
 int warn (char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
create_volume(int ac, char **av)
{
 CONFIG_PAGE_RAID_VOL_0 *vol;
 struct config_id_state state;
 struct volume_info *info;
 long stripe_size;
 int ch, error, fd, i, quick, raid_type, verbose;




 if (ac < 2) {
  warnx("create: volume type required");
  return (EINVAL);
 }

 fd = mpt_open(mpt_unit);
 if (fd < 0) {
  error = errno;
  warn("mpt_open");
  return (error);
 }


 raid_type = -1;
 for (i = 0; raid_type_table[i].name != ((void*)0); i++)
  if (strcasecmp(raid_type_table[i].name, av[1]) == 0) {
   raid_type = raid_type_table[i].raid_type;
   break;
  }

 if (raid_type == -1) {
  warnx("Unknown or unsupported volume type %s", av[1]);
  close(fd);
  return (EINVAL);
 }


 optind = 2;



 quick = 0;
 verbose = 0;
 stripe_size = 64 * 1024;

 while ((ch = getopt(ac, av, "dqs:v")) != -1) {
  switch (ch) {





  case 'q':
   quick = 1;
   break;
  case 's':
   stripe_size = dehumanize(optarg);
   if ((stripe_size < 512) || (!powerof2(stripe_size))) {
    warnx("Invalid stripe size %s", optarg);
    close(fd);
    return (EINVAL);
   }
   break;
  case 'v':
   verbose = 1;
   break;
  case '?':
  default:
   close(fd);
   return (EINVAL);
  }
 }
 ac -= optind;
 av += optind;


 state.ioc2 = mpt_read_ioc_page(fd, 2, ((void*)0));
 if (state.ioc2 == ((void*)0)) {
  error = errno;
  warn("Failed to read volume list");
  close(fd);
  return (error);
 }
 state.list = mpt_pd_list(fd);
 if (state.list == ((void*)0)) {
  close(fd);
  return (errno);
 }
 error = mpt_fetch_disks(fd, &state.nsdisks, &state.sdisks);
 if (error) {
  warn("Failed to fetch standalone disk list");
  close(fd);
  return (error);
 }
 state.target_id = 0xff;


 if (ac != 1) {
  warnx("Exactly one drive list is required");
  close(fd);
  return (EINVAL);
 }
 info = calloc(1, sizeof(*info));
 if (info == ((void*)0)) {
  close(fd);
  return (ENOMEM);
 }
 error = parse_volume(fd, raid_type, &state, av[0], info);
 if (error) {
  free(info);
  close(fd);
  return (error);
 }


 error = add_drives(fd, info, verbose);
 if (error) {
  free(info);
  close(fd);
  return (error);
 }


 vol = build_volume(fd, info, raid_type, stripe_size, &state, verbose);
 if (vol == ((void*)0)) {
  free(info);
  close(fd);
  return (errno);
 }
 error = mpt_raid_action(fd, MPI_RAID_ACTION_CREATE_VOLUME, vol->VolumeBus,
     vol->VolumeID, 0, quick ? MPI_RAID_ACTION_ADATA_DO_NOT_SYNC : 0,
     vol, vol->Header.PageLength * 4, ((void*)0), ((void*)0), 0, ((void*)0), ((void*)0), 1);
 if (error) {
  errno = error;
  warn("Failed to add volume");
  free(info);
  close(fd);
  return (error);
 }




 mpt_rescan_bus(vol->VolumeBus, vol->VolumeID);


 free(vol);
 free(info);
 free(state.sdisks);
 mpt_free_pd_list(state.list);
 free(state.ioc2);
 close(fd);

 return (0);
}
