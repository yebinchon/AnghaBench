
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* HCSECD_IDENT ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr,
"Usage: %s [-d] -f config_file [-h]\n" "Where:\n" "\t-d              do not detach from terminal\n" "\t-f config_file  use <config_file>\n" "\t-h              display this message\n", HCSECD_IDENT);





 exit(255);
}
