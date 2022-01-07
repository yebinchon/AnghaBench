
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* timestamp_t ;
struct reflog_expire_cfg {void* expire_unreachable; void* expire_total; } ;




 void* default_reflog_expire ;
 void* default_reflog_expire_unreachable ;
 struct reflog_expire_cfg* find_cfg_ent (char const*,int) ;
 scalar_t__ git_config_expiry_date (void**,char const*,char const*) ;
 int git_default_config (char const*,char const*,void*) ;
 scalar_t__ parse_config_key (char const*,char*,char const**,int*,char const**) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int reflog_expire_config(const char *var, const char *value, void *cb)
{
 const char *pattern, *key;
 int pattern_len;
 timestamp_t expire;
 int slot;
 struct reflog_expire_cfg *ent;

 if (parse_config_key(var, "gc", &pattern, &pattern_len, &key) < 0)
  return git_default_config(var, value, cb);

 if (!strcmp(key, "reflogexpire")) {
  slot = 129;
  if (git_config_expiry_date(&expire, var, value))
   return -1;
 } else if (!strcmp(key, "reflogexpireunreachable")) {
  slot = 128;
  if (git_config_expiry_date(&expire, var, value))
   return -1;
 } else
  return git_default_config(var, value, cb);

 if (!pattern) {
  switch (slot) {
  case 129:
   default_reflog_expire = expire;
   break;
  case 128:
   default_reflog_expire_unreachable = expire;
   break;
  }
  return 0;
 }

 ent = find_cfg_ent(pattern, pattern_len);
 if (!ent)
  return -1;
 switch (slot) {
 case 129:
  ent->expire_total = expire;
  break;
 case 128:
  ent->expire_unreachable = expire;
  break;
 }
 return 0;
}
