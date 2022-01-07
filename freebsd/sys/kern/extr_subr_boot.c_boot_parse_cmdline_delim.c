
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int boot_parse_arg (char*) ;
 char* strsep (char**,char const*) ;

int
boot_parse_cmdline_delim(char *cmdline, const char *delim)
{
 char *v;
 int howto;

 howto = 0;
 while ((v = strsep(&cmdline, delim)) != ((void*)0)) {
  if (*v == '\0')
   continue;
  howto |= boot_parse_arg(v);
 }
 return (howto);
}
