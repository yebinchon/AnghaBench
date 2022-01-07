
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int die (int ,char const*) ;
 char* getenv (char const*) ;
 int git_parse_ulong (char const*,unsigned long*) ;

unsigned long git_env_ulong(const char *k, unsigned long val)
{
 const char *v = getenv(k);
 if (v && !git_parse_ulong(v, &val))
  die(_("failed to parse %s"), k);
 return val;
}
