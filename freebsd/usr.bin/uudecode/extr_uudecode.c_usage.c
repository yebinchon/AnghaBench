
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

 (void)fprintf(stderr,
     "usage: uudecode [-cimprs] [file ...]\n"
     "       uudecode [-i] -o output_file [file]\n"
     "       b64decode [-cimprs] [file ...]\n"
     "       b64decode [-i] -o output_file [file]\n");
 exit(1);
}
