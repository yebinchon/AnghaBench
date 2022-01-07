
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replay_opts {scalar_t__ mainline; } ;
struct option {int long_name; struct replay_opts* value; } ;


 int _ (char*) ;
 int error (int ,int ) ;
 scalar_t__ strtol (char const*,char**,int) ;

__attribute__((used)) static int option_parse_m(const struct option *opt,
     const char *arg, int unset)
{
 struct replay_opts *replay = opt->value;
 char *end;

 if (unset) {
  replay->mainline = 0;
  return 0;
 }

 replay->mainline = strtol(arg, &end, 10);
 if (*end || replay->mainline <= 0)
  return error(_("option `%s' expects a number greater than zero"),
        opt->long_name);

 return 0;
}
