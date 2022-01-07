
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f_print (int ,char*,...) ;
 int fout ;

__attribute__((used)) static void
print_generic_header(const char *procname, int pointerp)
{
 f_print(fout, "\n");
 f_print(fout, "bool_t\n");
 f_print(fout, "xdr_%s(", procname);
 f_print(fout, "XDR *xdrs, ");
 f_print(fout, "%s ", procname);
 if (pointerp)
  f_print(fout, "*");
 f_print(fout, "objp)\n{\n\n");
}
