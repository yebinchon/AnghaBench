
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int hash_only ;
 int parse_opt_abbrev_cb (struct option const*,char const*,int) ;

__attribute__((used)) static int hash_callback(const struct option *opt, const char *arg, int unset)
{
 hash_only = 1;

 if (!arg)
  return 0;
 return parse_opt_abbrev_cb(opt, arg, unset);
}
