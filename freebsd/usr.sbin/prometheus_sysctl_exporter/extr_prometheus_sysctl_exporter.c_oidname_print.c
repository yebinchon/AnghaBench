
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t len; } ;
struct oidname {char* names; char* labels; TYPE_1__ oid; } ;
struct oidformat {int dummy; } ;
typedef int FILE ;


 int assert (int) ;
 int fprintf (int *,char*,...) ;
 int fputc (char const,int *) ;
 scalar_t__ isalnum (char const) ;
 scalar_t__ oidformat_is_temperature (struct oidformat const*) ;
 scalar_t__ oidformat_is_timeval (struct oidformat const*) ;
 scalar_t__ strlen (char const*) ;
 size_t strspn (char const*,char*) ;

__attribute__((used)) static void
oidname_print(const struct oidname *on, const struct oidformat *of,
    FILE *fp)
{
 const char *name, *label;
 size_t i;
 char separator;


 fprintf(fp, "sysctl");
 name = on->names;
 label = on->labels;
 for (i = 0; i < on->oid.len; ++i) {
  if (*label == '\0') {
   fputc('_', fp);
   while (*name != '\0') {

    fputc(isalnum(*name) ? *name : '_', fp);
    ++name;
   }
  }
  name += strlen(name) + 1;
  label += strlen(label) + 1;
 }
 if (oidformat_is_temperature(of))
  fprintf(fp, "_celcius");
 else if (oidformat_is_timeval(of))
  fprintf(fp, "_seconds");


 name = on->names;
 label = on->labels;
 separator = '{';
 for (i = 0; i < on->oid.len; ++i) {
  if (*label != '\0') {
   assert(label[strspn(label,
       "abcdefghijklmnopqrstuvwxyz"
       "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
       "0123456789_")] == '\0');
   fprintf(fp, "%c%s=\"", separator, label);
   while (*name != '\0') {

    if (*name == '\\' || *name == '"')
     fputc('\\', fp);
    fputc(*name++, fp);
   }
   fputc('"', fp);
   separator = ',';
  }
  name += strlen(name) + 1;
  label += strlen(label) + 1;
 }
 if (separator != '{')
  fputc('}', fp);
}
