
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mfi_ld_props {int default_cache_policy; int disk_cache_policy; } ;


 int MR_LD_CACHE_ALLOW_READ_CACHE ;
 int MR_LD_CACHE_ALLOW_WRITE_CACHE ;
 int MR_LD_CACHE_READ_ADAPTIVE ;
 int MR_LD_CACHE_READ_AHEAD ;
 int MR_LD_CACHE_WRITE_BACK ;
 int MR_LD_CACHE_WRITE_CACHE_BAD_BBU ;



 int errno ;
 scalar_t__ mfi_ld_set_props (int,struct mfi_ld_props*) ;
 int printf (char*,...) ;
 int warn (char*) ;

__attribute__((used)) static int
update_cache_policy(int fd, struct mfi_ld_props *old, struct mfi_ld_props *new)
{
 int error;
 uint8_t changes, policy;

 if (old->default_cache_policy == new->default_cache_policy &&
     old->disk_cache_policy == new->disk_cache_policy)
  return (0);
 policy = new->default_cache_policy;
 changes = policy ^ old->default_cache_policy;
 if (changes & MR_LD_CACHE_ALLOW_WRITE_CACHE)
  printf("%s caching of I/O writes\n",
      policy & MR_LD_CACHE_ALLOW_WRITE_CACHE ? "Enabling" :
      "Disabling");
 if (changes & MR_LD_CACHE_ALLOW_READ_CACHE)
  printf("%s caching of I/O reads\n",
      policy & MR_LD_CACHE_ALLOW_READ_CACHE ? "Enabling" :
      "Disabling");
 if (changes & MR_LD_CACHE_WRITE_BACK)
  printf("Setting write cache policy to %s\n",
      policy & MR_LD_CACHE_WRITE_BACK ? "write-back" :
      "write-through");
 if (changes & (MR_LD_CACHE_READ_AHEAD | MR_LD_CACHE_READ_ADAPTIVE))
  printf("Setting read ahead policy to %s\n",
      policy & MR_LD_CACHE_READ_AHEAD ?
      (policy & MR_LD_CACHE_READ_ADAPTIVE ?
      "adaptive" : "always") : "none");
 if (changes & MR_LD_CACHE_WRITE_CACHE_BAD_BBU)
  printf("%s write caching with bad BBU\n",
      policy & MR_LD_CACHE_WRITE_CACHE_BAD_BBU ? "Enabling" :
      "Disabling");
 if (old->disk_cache_policy != new->disk_cache_policy) {
  switch (new->disk_cache_policy) {
  case 129:
   printf("Enabling write-cache on physical drives\n");
   break;
  case 130:
   printf("Disabling write-cache on physical drives\n");
   break;
  case 128:
   printf("Using default write-cache setting on physical drives\n");
   break;
  }
 }

 if (mfi_ld_set_props(fd, new) < 0) {
  error = errno;
  warn("Failed to set volume properties");
  return (error);
 }
 return (0);
}
