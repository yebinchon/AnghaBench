
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,int) ;

__attribute__((used)) static void print_var_int(const char *var, int val)
{
 printf("%s=%d\n", var, val);
}
