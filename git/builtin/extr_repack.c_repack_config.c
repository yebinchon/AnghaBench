
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* delta_base_offset ;
 void* git_config_bool (char const*,char const*) ;
 int git_default_config (char const*,char const*,void*) ;
 void* pack_kept_objects ;
 int strcmp (char const*,char*) ;
 void* use_delta_islands ;
 void* write_bitmaps ;

__attribute__((used)) static int repack_config(const char *var, const char *value, void *cb)
{
 if (!strcmp(var, "repack.usedeltabaseoffset")) {
  delta_base_offset = git_config_bool(var, value);
  return 0;
 }
 if (!strcmp(var, "repack.packkeptobjects")) {
  pack_kept_objects = git_config_bool(var, value);
  return 0;
 }
 if (!strcmp(var, "repack.writebitmaps") ||
     !strcmp(var, "pack.writebitmaps")) {
  write_bitmaps = git_config_bool(var, value);
  return 0;
 }
 if (!strcmp(var, "repack.usedeltaislands")) {
  use_delta_islands = git_config_bool(var, value);
  return 0;
 }
 return git_default_config(var, value, cb);
}
