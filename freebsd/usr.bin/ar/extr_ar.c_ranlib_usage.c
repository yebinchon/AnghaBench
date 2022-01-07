
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
ranlib_usage(void)
{

 (void)fprintf(stderr, "usage:	ranlib [-DtU] archive ...\n");
 (void)fprintf(stderr, "\tranlib -V\n");
 exit(EX_USAGE);
}
