
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int long_name; struct batch_options* value; } ;
struct batch_options {int enabled; int print_contents; char const* format; } ;


 int BUG_ON_OPT_NEG (int) ;
 int _ (char*) ;
 int error (int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int batch_option_callback(const struct option *opt,
     const char *arg,
     int unset)
{
 struct batch_options *bo = opt->value;

 BUG_ON_OPT_NEG(unset);

 if (bo->enabled) {
  return error(_("only one batch option may be specified"));
 }

 bo->enabled = 1;
 bo->print_contents = !strcmp(opt->long_name, "batch");
 bo->format = arg;

 return 0;
}
