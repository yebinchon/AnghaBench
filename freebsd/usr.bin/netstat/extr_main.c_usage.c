
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int xo_error (char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ;
 int xo_finish () ;

__attribute__((used)) static void
usage(void)
{
 (void)xo_error("%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n",
"usage: netstat [-46AaLnRSTWx] [-f protocol_family | -p protocol]\n"
"               [-M core] [-N system]",
"       netstat -i | -I interface [-46abdhnW] [-f address_family]\n"
"               [-M core] [-N system]",
"       netstat -w wait [-I interface] [-46d] [-M core] [-N system]\n"
"               [-q howmany]",
"       netstat -s [-46sz] [-f protocol_family | -p protocol]\n"
"               [-M core] [-N system]",
"       netstat -i | -I interface -s [-46s]\n"
"               [-f protocol_family | -p protocol] [-M core] [-N system]",
"       netstat -m [-M core] [-N system]",
"       netstat -B [-z] [-I interface]",
"       netstat -r [-46AnW] [-F fibnum] [-f address_family]\n"
"               [-M core] [-N system]",
"       netstat -rs [-s] [-M core] [-N system]",
"       netstat -g [-46W] [-f address_family] [-M core] [-N system]",
"       netstat -gs [-46s] [-f address_family] [-M core] [-N system]",
"       netstat -Q");
 xo_finish();
 exit(1);
}
