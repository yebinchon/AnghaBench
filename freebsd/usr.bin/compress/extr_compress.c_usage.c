
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(int iscompress)
{
 if (iscompress)
  (void)fprintf(stderr,
      "usage: compress [-cfv] [-b bits] [file ...]\n");
 else
  (void)fprintf(stderr,
      "usage: uncompress [-c] [-b bits] [file ...]\n");
 exit(1);
}
