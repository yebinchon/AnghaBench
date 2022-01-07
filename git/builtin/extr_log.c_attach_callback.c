
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {char const* mime_boundary; int no_inline; } ;
struct option {scalar_t__ value; } ;


 char const* git_version_string ;

__attribute__((used)) static int attach_callback(const struct option *opt, const char *arg, int unset)
{
 struct rev_info *rev = (struct rev_info *)opt->value;
 if (unset)
  rev->mime_boundary = ((void*)0);
 else if (arg)
  rev->mime_boundary = arg;
 else
  rev->mime_boundary = git_version_string;
 rev->no_inline = unset ? 0 : 1;
 return 0;
}
