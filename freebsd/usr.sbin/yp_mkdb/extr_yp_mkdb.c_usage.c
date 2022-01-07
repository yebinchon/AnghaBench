
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "%s\n%s\n%s\n%s\n",
 "usage: yp_mkdb -c",
 "       yp_mkdb -u dbname",
 "       yp_mkdb [-c] [-b] [-s] [-f] [-i inputfile] [-o outputfile]",
 "               [-d domainname ] [-m mastername] inputfile dbname");
 exit(1);
}
