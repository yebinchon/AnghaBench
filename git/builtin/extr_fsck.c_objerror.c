
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;


 int ERROR_OBJECT ;
 int _ (char*) ;
 int describe_object (struct object*) ;
 int errors_found ;
 int fprintf_ln (int ,int ,int ,int ,char const*) ;
 int printable_type (struct object*) ;
 int stderr ;

__attribute__((used)) static int objerror(struct object *obj, const char *err)
{
 errors_found |= ERROR_OBJECT;

 fprintf_ln(stderr, _("error in %s %s: %s"),
     printable_type(obj), describe_object(obj), err);
 return -1;
}
