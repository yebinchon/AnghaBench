
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 char* gzip_version ;
 int stderr ;

__attribute__((used)) static void
display_version(void)
{

 fprintf(stderr, "%s\n", gzip_version);
 exit(0);
}
