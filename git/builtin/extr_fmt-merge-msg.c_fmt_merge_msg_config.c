
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEFAULT_MERGE_LOG_LEN ;
 int error (char*,char const*,char const*) ;
 int git_config_bool (char const*,char const*) ;
 scalar_t__ git_config_bool_or_int (char const*,char const*,int*) ;
 int git_default_config (char const*,char const*,void*) ;
 scalar_t__ merge_log_config ;
 int strcmp (char const*,char*) ;
 int use_branch_desc ;

int fmt_merge_msg_config(const char *key, const char *value, void *cb)
{
 if (!strcmp(key, "merge.log") || !strcmp(key, "merge.summary")) {
  int is_bool;
  merge_log_config = git_config_bool_or_int(key, value, &is_bool);
  if (!is_bool && merge_log_config < 0)
   return error("%s: negative length %s", key, value);
  if (is_bool && merge_log_config)
   merge_log_config = DEFAULT_MERGE_LOG_LEN;
 } else if (!strcmp(key, "merge.branchdesc")) {
  use_branch_desc = git_config_bool(key, value);
 } else {
  return git_default_config(key, value, cb);
 }
 return 0;
}
