
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f_print (int ,char*,...) ;
 char const* fixtype (char const*) ;
 int fout ;
 scalar_t__ streq (char const*,char*) ;

void
ptype(const char *prefix, const char *type, int follow)
{
 if (prefix != ((void*)0)) {
  if (streq(prefix, "enum")) {
   f_print(fout, "enum ");
  } else {
   f_print(fout, "struct ");
  }
 }
 if (streq(type, "bool")) {
  f_print(fout, "bool_t ");
 } else if (streq(type, "string")) {
  f_print(fout, "char *");
 } else {
  f_print(fout, "%s ", follow ? fixtype(type) : type);
 }
}
