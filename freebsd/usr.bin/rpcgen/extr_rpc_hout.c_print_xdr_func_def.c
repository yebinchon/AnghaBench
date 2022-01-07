
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f_print (int ,char*,char const*,char const*,char*) ;
 int fout ;

void
print_xdr_func_def(const char *name, int pointerp)
{
 f_print(fout, "extern  bool_t xdr_%s(XDR *, %s%s);\n", name,
  name, pointerp ? "*" : "");
}
