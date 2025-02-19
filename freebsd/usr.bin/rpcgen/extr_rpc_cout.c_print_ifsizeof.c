
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f_print (int ,char*,...) ;
 int fout ;
 scalar_t__ streq (char const*,char*) ;
 int tabify (int ,int) ;
 scalar_t__ undefined (char const*) ;

__attribute__((used)) static void
print_ifsizeof(int indent, const char *prefix, const char *type)
{
 if (indent) {
  f_print(fout, ",\n");
  tabify(fout, indent);
 } else {
  f_print(fout, ", ");
 }
 if (streq(type, "bool")) {
  f_print(fout, "sizeof (bool_t), (xdrproc_t) xdr_bool");
 } else {
  f_print(fout, "sizeof (");
  if (undefined(type) && prefix) {
   f_print(fout, "%s ", prefix);
  }
  f_print(fout, "%s), (xdrproc_t) xdr_%s", type, type);
 }
}
