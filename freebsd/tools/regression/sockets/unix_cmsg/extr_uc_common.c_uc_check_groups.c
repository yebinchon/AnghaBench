
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef scalar_t__ gid_t ;
struct TYPE_3__ {int gid_num; scalar_t__ const* gid_arr; } ;
struct TYPE_4__ {TYPE_1__ proc_cred; } ;


 scalar_t__ memcmp (scalar_t__ const*,scalar_t__ const*,int) ;
 TYPE_2__ uc_cfg ;
 int uc_dbgmsg (char*,char const*,int,int ) ;
 int uc_logmsgx (char*,char const*,...) ;

int
uc_check_groups(const char *gid_arr_str, const gid_t *gid_arr,
    const char *gid_num_str, int gid_num, bool all_gids)
{
 int i;

 for (i = 0; i < gid_num; ++i)
  uc_dbgmsg("%s[%d] %lu", gid_arr_str, i, (u_long)gid_arr[i]);

 if (all_gids) {
  if (gid_num != uc_cfg.proc_cred.gid_num) {
   uc_logmsgx("%s %d != %d", gid_num_str, gid_num,
       uc_cfg.proc_cred.gid_num);
   return (-1);
  }
 } else {
  if (gid_num > uc_cfg.proc_cred.gid_num) {
   uc_logmsgx("%s %d > %d", gid_num_str, gid_num,
       uc_cfg.proc_cred.gid_num);
   return (-1);
  }
 }
 if (memcmp(gid_arr, uc_cfg.proc_cred.gid_arr,
     gid_num * sizeof(*gid_arr)) != 0) {
  uc_logmsgx("%s content is wrong", gid_arr_str);
  for (i = 0; i < gid_num; ++i)
   if (gid_arr[i] != uc_cfg.proc_cred.gid_arr[i]) {
    uc_logmsgx("%s[%d] %lu != %lu",
        gid_arr_str, i, (u_long)gid_arr[i],
        (u_long)uc_cfg.proc_cred.gid_arr[i]);
    break;
   }
  return (-1);
 }
 return (0);
}
