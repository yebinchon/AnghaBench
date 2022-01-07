
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f_print (int ,char*,char const*,char const*,char const*,char const*,char const*) ;
 int fout ;

__attribute__((used)) static void
printif(const char *proc, const char *transp, const char *prefix,
    const char *arg)
{
 f_print(fout, "\tif (!svc_%s(%s, xdr_%s, (char *)%s%s)) {\n",
  proc, transp, arg, prefix, arg);
}
