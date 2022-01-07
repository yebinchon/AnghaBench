
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mfi_ld_props {int disk_cache_policy; } ;


 int MR_LD_CACHE_ALLOW_READ_CACHE ;
 int MR_LD_CACHE_ALLOW_WRITE_CACHE ;
 int MR_LD_CACHE_READ_ADAPTIVE ;
 int MR_LD_CACHE_READ_AHEAD ;
 int MR_LD_CACHE_WRITE_BACK ;
 int MR_LD_CACHE_WRITE_CACHE_BAD_BBU ;
 int MR_PD_CACHE_DISABLE ;
 int MR_PD_CACHE_ENABLE ;
 int MR_PD_CACHE_UNCHANGED ;
 int stage_cache_setting (struct mfi_ld_props*,int,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int warnx (char*) ;

__attribute__((used)) static int
process_cache_command(int ac, char **av, struct mfi_ld_props *props)
{
 uint8_t policy;


 if (strcmp(av[0], "all") == 0 || strcmp(av[0], "enable") == 0) {
  stage_cache_setting(props, MR_LD_CACHE_ALLOW_READ_CACHE |
      MR_LD_CACHE_ALLOW_WRITE_CACHE,
      MR_LD_CACHE_ALLOW_READ_CACHE |
      MR_LD_CACHE_ALLOW_WRITE_CACHE);
  return (1);
 }
 if (strcmp(av[0], "none") == 0 || strcmp(av[0], "disable") == 0) {
  stage_cache_setting(props, 0, MR_LD_CACHE_ALLOW_READ_CACHE |
      MR_LD_CACHE_ALLOW_WRITE_CACHE);
  return (1);
 }
 if (strcmp(av[0], "reads") == 0) {
   stage_cache_setting(props, MR_LD_CACHE_ALLOW_READ_CACHE,
      MR_LD_CACHE_ALLOW_READ_CACHE |
      MR_LD_CACHE_ALLOW_WRITE_CACHE);
  return (1);
 }
 if (strcmp(av[0], "writes") == 0) {
  stage_cache_setting(props, MR_LD_CACHE_ALLOW_WRITE_CACHE,
      MR_LD_CACHE_ALLOW_READ_CACHE |
      MR_LD_CACHE_ALLOW_WRITE_CACHE);
  return (1);
 }


 if (strcmp(av[0], "write-back") == 0) {
  stage_cache_setting(props, MR_LD_CACHE_WRITE_BACK,
      MR_LD_CACHE_WRITE_BACK);
  return (1);
 }
 if (strcmp(av[0], "write-through") == 0) {
  stage_cache_setting(props, 0, MR_LD_CACHE_WRITE_BACK);
  return (1);
 }
 if (strcmp(av[0], "bad-bbu-write-cache") == 0) {
  if (ac < 2) {
   warnx("cache: bad BBU setting required");
   return (-1);
  }
  if (strcmp(av[1], "enable") == 0)
   policy = MR_LD_CACHE_WRITE_CACHE_BAD_BBU;
  else if (strcmp(av[1], "disable") == 0)
   policy = 0;
  else {
   warnx("cache: invalid bad BBU setting");
   return (-1);
  }
  stage_cache_setting(props, policy,
      MR_LD_CACHE_WRITE_CACHE_BAD_BBU);
  return (2);
 }


 if (strcmp(av[0], "read-ahead") == 0) {
  if (ac < 2) {
   warnx("cache: read-ahead setting required");
   return (-1);
  }
  if (strcmp(av[1], "none") == 0)
   policy = 0;
  else if (strcmp(av[1], "always") == 0)
   policy = MR_LD_CACHE_READ_AHEAD;
  else if (strcmp(av[1], "adaptive") == 0)
   policy = MR_LD_CACHE_READ_AHEAD |
       MR_LD_CACHE_READ_ADAPTIVE;
  else {
   warnx("cache: invalid read-ahead setting");
   return (-1);
  }
  stage_cache_setting(props, policy, MR_LD_CACHE_READ_AHEAD |
       MR_LD_CACHE_READ_ADAPTIVE);
  return (2);
 }


 if (strcmp(av[0], "write-cache") == 0) {
  if (ac < 2) {
   warnx("cache: write-cache setting required");
   return (-1);
  }
  if (strcmp(av[1], "enable") == 0)
   props->disk_cache_policy = MR_PD_CACHE_ENABLE;
  else if (strcmp(av[1], "disable") == 0)
   props->disk_cache_policy = MR_PD_CACHE_DISABLE;
  else if (strcmp(av[1], "default") == 0)
   props->disk_cache_policy = MR_PD_CACHE_UNCHANGED;
  else {
   warnx("cache: invalid write-cache setting");
   return (-1);
  }
  return (2);
 }

 warnx("cache: Invalid command");
 return (-1);
}
