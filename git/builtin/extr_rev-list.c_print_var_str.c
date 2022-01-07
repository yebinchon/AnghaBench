
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,char const*) ;

__attribute__((used)) static void print_var_str(const char *var, const char *val)
{
 printf("%s='%s'\n", var, val);
}
