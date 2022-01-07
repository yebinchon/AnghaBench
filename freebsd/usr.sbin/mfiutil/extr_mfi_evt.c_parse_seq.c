
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uint32_t ;
struct mfi_evt_log_state {long newest_seq_num; long oldest_seq_num; long clear_seq_num; long shutdown_seq_num; long boot_seq_num; } ;


 int EINVAL ;
 int errno ;
 scalar_t__ strcasecmp (char*,char*) ;
 long strtol (char*,char**,int ) ;

__attribute__((used)) static int
parse_seq(struct mfi_evt_log_state *info, char *arg, uint32_t *seq)
{
 char *cp;
 long val;

 if (strcasecmp(arg, "newest") == 0) {
  *seq = info->newest_seq_num;
  return (0);
 }
 if (strcasecmp(arg, "oldest") == 0) {
  *seq = info->oldest_seq_num;
  return (0);
 }
 if (strcasecmp(arg, "clear") == 0) {
  *seq = info->clear_seq_num;
  return (0);
 }
 if (strcasecmp(arg, "shutdown") == 0) {
  *seq = info->shutdown_seq_num;
  return (0);
 }
 if (strcasecmp(arg, "boot") == 0) {
  *seq = info->boot_seq_num;
  return (0);
 }
 val = strtol(arg, &cp, 0);
 if (*cp != '\0' || val < 0) {
  errno = EINVAL;
  return (-1);
 }
 *seq = val;
 return (0);
}
