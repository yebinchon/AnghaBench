
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int SIGNED_TAG_ABORT ;
 int STRIP ;
 int VERBATIM ;
 int WARN ;
 int WARN_STRIP ;
 int error (char*,char const*) ;
 int signed_tag_mode ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int parse_opt_signed_tag_mode(const struct option *opt,
         const char *arg, int unset)
{
 if (unset || !strcmp(arg, "abort"))
  signed_tag_mode = SIGNED_TAG_ABORT;
 else if (!strcmp(arg, "verbatim") || !strcmp(arg, "ignore"))
  signed_tag_mode = VERBATIM;
 else if (!strcmp(arg, "warn"))
  signed_tag_mode = WARN;
 else if (!strcmp(arg, "warn-strip"))
  signed_tag_mode = WARN_STRIP;
 else if (!strcmp(arg, "strip"))
  signed_tag_mode = STRIP;
 else
  return error("Unknown signed-tags mode: %s", arg);
 return 0;
}
