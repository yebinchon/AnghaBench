
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f_print (int ,char*,char const*) ;
 int fout ;

__attribute__((used)) static void
print_ifarg(const char *arg)
{
 f_print(fout, ", %s", arg);
}
