
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f_print (int ,char*,char const*,char const*) ;
 int fout ;

__attribute__((used)) static void
pdefine(const char *name, const char *num)
{
 f_print(fout, "#define\t%s %s\n", name, num);
}
