
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* type; int rel; int name; int array_max; int prefix; } ;
typedef TYPE_1__ declaration ;






 int f_print (int ,char*,...) ;
 int fout ;
 int fputs (char const*,int ) ;
 int s_print (char*,char*,int ) ;
 scalar_t__ streq (char*,char const*) ;
 int tabify (int ,int) ;

void
pdeclaration(const char *name, declaration *dec, int tab, const char *separator)
{
 char buf[8];
 const char *prefix;
 const char *type;

 if (streq(dec->type, "void")) {
  return;
 }
 tabify(fout, tab);
 if (streq(dec->type, name) && !dec->prefix) {
  f_print(fout, "struct ");
 }
 if (streq(dec->type, "string")) {
  f_print(fout, "char *%s", dec->name);
 } else {
  prefix = "";
  if (streq(dec->type, "bool")) {
   type = "bool_t";
  } else if (streq(dec->type, "opaque")) {
   type = "char";
  } else {
   if (dec->prefix) {
    s_print(buf, "%s ", dec->prefix);
    prefix = buf;
   }
   type = dec->type;
  }
  switch (dec->rel) {
  case 131:
   f_print(fout, "%s%s %s", prefix, type, dec->name);
   break;
  case 128:
   f_print(fout, "%s%s %s[%s]", prefix, type, dec->name,
    dec->array_max);
   break;
  case 129:
   f_print(fout, "%s%s *%s", prefix, type, dec->name);
   break;
  case 130:
   f_print(fout, "struct {\n");
   tabify(fout, tab);
   f_print(fout, "\tu_int %s_len;\n", dec->name);
   tabify(fout, tab);
   f_print(fout,
    "\t%s%s *%s_val;\n", prefix, type, dec->name);
   tabify(fout, tab);
   f_print(fout, "} %s", dec->name);
   break;
  }
 }
 fputs(separator, fout);
}
