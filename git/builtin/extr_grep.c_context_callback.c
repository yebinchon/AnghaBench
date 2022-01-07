
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int short_name; struct grep_opt* value; } ;
struct grep_opt {int pre_context; int post_context; } ;


 int _ (char*) ;
 int error (int ,int ) ;
 int strtol (char const*,char**,int) ;

__attribute__((used)) static int context_callback(const struct option *opt, const char *arg,
       int unset)
{
 struct grep_opt *grep_opt = opt->value;
 int value;
 const char *endp;

 if (unset) {
  grep_opt->pre_context = grep_opt->post_context = 0;
  return 0;
 }
 value = strtol(arg, (char **)&endp, 10);
 if (*endp) {
  return error(_("switch `%c' expects a numerical value"),
        opt->short_name);
 }
 grep_opt->pre_context = grep_opt->post_context = value;
 return 0;
}
