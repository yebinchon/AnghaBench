
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_get_bool_or_int (char*,int*,int*) ;
 int git_env_ulong (char*,int ) ;

int git_config_get_index_threads(int *dest)
{
 int is_bool, val;

 val = git_env_ulong("GIT_TEST_INDEX_THREADS", 0);
 if (val) {
  *dest = val;
  return 0;
 }

 if (!git_config_get_bool_or_int("index.threads", &is_bool, &val)) {
  if (is_bool)
   *dest = val ? 0 : 1;
  else
   *dest = val;
  return 0;
 }

 return 1;
}
