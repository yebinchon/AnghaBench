
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int freeenv (char*) ;
 char* kern_getenv (char const*) ;
 int printf (char*,char const*,char*) ;

__attribute__((used)) static void
parse_dir_ask_printenv(const char *var)
{
 char *val;

 val = kern_getenv(var);
 if (val != ((void*)0)) {
  printf("  %s=%s\n", var, val);
  freeenv(val);
 }
}
