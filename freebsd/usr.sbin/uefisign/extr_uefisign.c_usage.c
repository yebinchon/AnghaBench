
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr, "usage: uefisign -c cert -k key -o outfile [-v] file\n"
   "       uefisign -V [-c cert] [-v] file\n");
 exit(1);
}
