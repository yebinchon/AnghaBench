
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidvalue {int dummy; } ;
struct oidname {int dummy; } ;
struct oidformat {int dummy; } ;
struct oiddescription {int dummy; } ;
struct oid {int dummy; } ;
typedef int FILE ;


 int fprintf (int *,char*) ;
 int fputc (char,int *) ;
 scalar_t__ oid_get_description (struct oid const*,struct oiddescription*) ;
 int oid_get_format (struct oid const*,struct oidformat*) ;
 int oid_get_name (struct oid const*,struct oidname*) ;
 int oid_get_value (struct oid const*,struct oidformat*,struct oidvalue*) ;
 int oiddescription_print (struct oiddescription*,int *) ;
 int oidname_has_labels (struct oidname*) ;
 int oidname_print (struct oidname*,struct oidformat*,int *) ;
 int oidvalue_print (struct oidvalue*,int *) ;

__attribute__((used)) static void
oid_print(const struct oid *o, struct oidname *on, bool print_description,
    FILE *fp)
{
 struct oidformat of;
 struct oidvalue ov;
 struct oiddescription od;

 if (!oid_get_format(o, &of) || !oid_get_value(o, &of, &ov))
  return;
 oid_get_name(o, on);







 if (print_description && !oidname_has_labels(on) &&
     oid_get_description(o, &od)) {
  fprintf(fp, "# HELP ");
  oidname_print(on, &of, fp);
  fputc(' ', fp);
  oiddescription_print(&od, fp);
  fputc('\n', fp);
 }


 oidname_print(on, &of, fp);
 fputc(' ', fp);
 oidvalue_print(&ov, fp);
 fputc('\n', fp);
}
