
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f_print (int ,char*,char const*,int ) ;
 int fout ;
 int stringfix (char const*) ;

__attribute__((used)) static void
p_xdrfunc(const char *rname, const char *typename)
{
 f_print(fout, "\t\txdr_%s = (xdrproc_t) xdr_%s;\n",
     rname, stringfix(typename));
}
