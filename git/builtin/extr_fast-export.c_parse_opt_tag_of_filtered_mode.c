
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int DROP ;
 int REWRITE ;
 int TAG_FILTERING_ABORT ;
 int error (char*,char const*) ;
 int strcmp (char const*,char*) ;
 int tag_of_filtered_mode ;

__attribute__((used)) static int parse_opt_tag_of_filtered_mode(const struct option *opt,
       const char *arg, int unset)
{
 if (unset || !strcmp(arg, "abort"))
  tag_of_filtered_mode = TAG_FILTERING_ABORT;
 else if (!strcmp(arg, "drop"))
  tag_of_filtered_mode = DROP;
 else if (!strcmp(arg, "rewrite"))
  tag_of_filtered_mode = REWRITE;
 else
  return error("Unknown tag-of-filtered mode: %s", arg);
 return 0;
}
