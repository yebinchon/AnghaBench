
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mfi_ld_props {int default_cache_policy; int disk_cache_policy; int current_cache_policy; } ;


 int EINVAL ;


 int MR_LD_CACHE_READ_ADAPTIVE ;
 int MR_LD_CACHE_READ_AHEAD ;
 int MR_LD_CACHE_WRITE_BACK ;
 int MR_LD_CACHE_WRITE_CACHE_BAD_BBU ;



 int O_RDWR ;
 int close (int) ;
 int errno ;
 scalar_t__ mfi_ld_get_props (int,int ,struct mfi_ld_props*) ;
 scalar_t__ mfi_lookup_volume (int,char*,int *) ;
 int mfi_open (int,int ) ;
 int mfi_unit ;
 char* mfi_volume_name (int,int ) ;
 int printf (char*,...) ;
 int process_cache_command (int,char**,struct mfi_ld_props*) ;
 int update_cache_policy (int,struct mfi_ld_props*,struct mfi_ld_props*) ;
 int warn (char*,...) ;
 int warnx (char*) ;

__attribute__((used)) static int
volume_cache(int ac, char **av)
{
 struct mfi_ld_props props, new;
 int error, fd, consumed;
 uint8_t target_id;

 if (ac < 2) {
  warnx("cache: volume required");
  return (EINVAL);
 }

 fd = mfi_open(mfi_unit, O_RDWR);
 if (fd < 0) {
  error = errno;
  warn("mfi_open");
  return (error);
 }

 if (mfi_lookup_volume(fd, av[1], &target_id) < 0) {
  error = errno;
  warn("Invalid volume: %s", av[1]);
  close(fd);
  return (error);
 }

 if (mfi_ld_get_props(fd, target_id, &props) < 0) {
  error = errno;
  warn("Failed to fetch volume properties");
  close(fd);
  return (error);
 }

 if (ac == 2) {
  printf("mfi%u volume %s cache settings:\n", mfi_unit,
      mfi_volume_name(fd, target_id));
  printf("             I/O caching: ");
  switch (props.default_cache_policy &
      (131 |
      132)) {
  case 0:
   printf("disabled\n");
   break;
  case 131:
   printf("writes\n");
   break;
  case 132:
   printf("reads\n");
   break;
  case 131 |
      132:
   printf("writes and reads\n");
   break;
  }
  printf("           write caching: %s\n",
      props.default_cache_policy & MR_LD_CACHE_WRITE_BACK ?
      "write-back" : "write-through");
  printf("write cache with bad BBU: %s\n",
      props.default_cache_policy &
      MR_LD_CACHE_WRITE_CACHE_BAD_BBU ? "enabled" : "disabled");
  printf("              read ahead: %s\n",
      props.default_cache_policy & MR_LD_CACHE_READ_AHEAD ?
      (props.default_cache_policy & MR_LD_CACHE_READ_ADAPTIVE ?
      "adaptive" : "always") : "none");
  printf("       drive write cache: ");
  switch (props.disk_cache_policy) {
  case 128:
   printf("default\n");
   break;
  case 129:
   printf("enabled\n");
   break;
  case 130:
   printf("disabled\n");
   break;
  default:
   printf("??? %d\n", props.disk_cache_policy);
   break;
  }
  if (props.default_cache_policy != props.current_cache_policy)
   printf(
 "Cache disabled due to dead battery or ongoing battery relearn\n");
  error = 0;
 } else {
  new = props;
  av += 2;
  ac -= 2;
  while (ac > 0) {
   consumed = process_cache_command(ac, av, &new);
   if (consumed < 0) {
    close(fd);
    return (EINVAL);
   }
   av += consumed;
   ac -= consumed;
  }
  error = update_cache_policy(fd, &props, &new);
 }
 close(fd);

 return (error);
}
