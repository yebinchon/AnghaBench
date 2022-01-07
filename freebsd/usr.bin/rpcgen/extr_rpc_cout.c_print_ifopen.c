
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f_print (int ,char*,char const*) ;
 int fout ;
 int tabify (int ,int) ;

__attribute__((used)) static void
print_ifopen(int indent, const char *name)
{
 tabify(fout, indent);
 f_print(fout, "if (!xdr_%s(xdrs", name);
}
