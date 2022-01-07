
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int boot_parse_cmdline_delim (char*,char*) ;

int
boot_parse_cmdline(char *cmdline)
{

 return (boot_parse_cmdline_delim(cmdline, " \t\n"));
}
