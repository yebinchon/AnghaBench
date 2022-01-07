
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 scalar_t__ DECORATE_SHORT_REFS ;
 int _ (char*) ;
 int decoration_given ;
 scalar_t__ decoration_style ;
 int die (int ,char const*) ;
 scalar_t__ parse_decoration_style (char const*) ;

__attribute__((used)) static int decorate_callback(const struct option *opt, const char *arg, int unset)
{
 if (unset)
  decoration_style = 0;
 else if (arg)
  decoration_style = parse_decoration_style(arg);
 else
  decoration_style = DECORATE_SHORT_REFS;

 if (decoration_style < 0)
  die(_("invalid --decorate option: %s"), arg);

 decoration_given = 1;

 return 0;
}
