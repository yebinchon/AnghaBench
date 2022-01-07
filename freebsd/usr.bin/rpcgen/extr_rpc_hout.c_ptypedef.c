
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int relation ;
struct TYPE_5__ {char* old_type; int rel; int array_max; scalar_t__ old_prefix; } ;
struct TYPE_6__ {TYPE_1__ ty; } ;
struct TYPE_7__ {char* def_name; TYPE_2__ def; } ;
typedef TYPE_3__ definition ;






 int f_print (int ,char*,...) ;
 int fout ;
 int s_print (char*,char*,scalar_t__) ;
 scalar_t__ streq (char const*,char const*) ;
 scalar_t__ undefined2 (char const*,char const*) ;

__attribute__((used)) static void
ptypedef(definition *def)
{
 const char *name = def->def_name;
 const char *old = def->def.ty.old_type;
 char prefix[8];
 relation rel = def->def.ty.rel;


 if (!streq(name, old)) {
  if (streq(old, "string")) {
   old = "char";
   rel = 129;
  } else if (streq(old, "opaque")) {
   old = "char";
  } else if (streq(old, "bool")) {
   old = "bool_t";
  }
  if (undefined2(old, name) && def->def.ty.old_prefix) {
   s_print(prefix, "%s ", def->def.ty.old_prefix);
  } else {
   prefix[0] = 0;
  }
  f_print(fout, "typedef ");
  switch (rel) {
  case 130:
   f_print(fout, "struct {\n");
   f_print(fout, "\tu_int %s_len;\n", name);
   f_print(fout, "\t%s%s *%s_val;\n", prefix, old, name);
   f_print(fout, "} %s", name);
   break;
  case 129:
   f_print(fout, "%s%s *%s", prefix, old, name);
   break;
  case 128:
   f_print(fout, "%s%s %s[%s]", prefix, old, name,
    def->def.ty.array_max);
   break;
  case 131:
   f_print(fout, "%s%s %s", prefix, old, name);
   break;
  }
  f_print(fout, ";\n");
 }
}
