
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replay_opts {scalar_t__ xopts_nr; int * xopts; int xopts_alloc; } ;
struct option {struct replay_opts** value; } ;


 int ALLOC_GROW (int *,scalar_t__,int ) ;
 int xstrdup (char const*) ;

__attribute__((used)) static int option_parse_x(const struct option *opt,
     const char *arg, int unset)
{
 struct replay_opts **opts_ptr = opt->value;
 struct replay_opts *opts = *opts_ptr;

 if (unset)
  return 0;

 ALLOC_GROW(opts->xopts, opts->xopts_nr + 1, opts->xopts_alloc);
 opts->xopts[opts->xopts_nr++] = xstrdup(arg);
 return 0;
}
