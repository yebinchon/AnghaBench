
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f_print (int ,char*,char const*,char const*) ;
 int fout ;

__attribute__((used)) static void
printerr(const char *err, const char *transp)
{
 f_print(fout, "\t\tsvcerr_%s(%s);\n", err, transp);
}
