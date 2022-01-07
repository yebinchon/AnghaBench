
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*) ;

void usage(char *name)
{
 printf("Usage %s <opts>\n"
        "-h\thelp\n"
        "-b\t<bssid>\n"
        "-t\t<tap>\n"
        , name);
 exit(1);
}
