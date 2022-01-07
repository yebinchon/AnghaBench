
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int REENCODE_ABORT ;
 int REENCODE_NO ;
 int REENCODE_YES ;
 int error (char*,char const*) ;
 int git_parse_maybe_bool (char const*) ;
 int reencode_mode ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static int parse_opt_reencode_mode(const struct option *opt,
       const char *arg, int unset)
{
 if (unset) {
  reencode_mode = REENCODE_ABORT;
  return 0;
 }

 switch (git_parse_maybe_bool(arg)) {
 case 0:
  reencode_mode = REENCODE_NO;
  break;
 case 1:
  reencode_mode = REENCODE_YES;
  break;
 default:
  if (!strcasecmp(arg, "abort"))
   reencode_mode = REENCODE_ABORT;
  else
   return error("Unknown reencoding mode: %s", arg);
 }

 return 0;
}
