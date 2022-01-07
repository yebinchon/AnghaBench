
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int f_print (int ,char*,char*,char*,char*,char*,char*) ;
 int options_usage () ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 f_print(stderr, "%s\n%s\n%s\n%s\n%s\n",
  "usage: rpcgen infile",
  "       rpcgen [-abCLNTM] [-Dname[=value]] [-i size][-I -P [-K seconds]] [-Y path] infile",

  "       rpcgen [-c | -h | -l | -m | -t | -Sc | -Ss | -Sm][-o outfile] [infile]",

  "       rpcgen [-s nettype]* [-o outfile] [infile]",
  "       rpcgen [-n netid]* [-o outfile] [infile]");
 options_usage();
 exit(1);
}
