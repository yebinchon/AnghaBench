
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 char* gzip_copyright ;
 char* gzip_version ;
 int stderr ;

__attribute__((used)) static void
display_license(void)
{

 fprintf(stderr, "%s (based on NetBSD gzip 20150113)\n", gzip_version);
 fprintf(stderr, "%s\n", gzip_copyright);
 exit(0);
}
