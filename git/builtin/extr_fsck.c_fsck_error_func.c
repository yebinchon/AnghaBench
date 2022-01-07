
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;
struct fsck_options {int dummy; } ;


 int BUG (char*,int) ;


 int _ (char*) ;
 int describe_object (struct object*) ;
 int fprintf_ln (int ,int ,int ,int ,char const*) ;
 int printable_type (struct object*) ;
 int stderr ;

__attribute__((used)) static int fsck_error_func(struct fsck_options *o,
 struct object *obj, int type, const char *message)
{
 switch (type) {
 case 128:

  fprintf_ln(stderr, _("warning in %s %s: %s"),
      printable_type(obj), describe_object(obj), message);
  return 0;
 case 129:

  fprintf_ln(stderr, _("error in %s %s: %s"),
      printable_type(obj), describe_object(obj), message);
  return 1;
 default:
  BUG("%d (FSCK_IGNORE?) should never trigger this callback", type);
 }
}
