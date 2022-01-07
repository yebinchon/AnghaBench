
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void)fprintf(stderr,
  "usage: du [-Aclnx] [-H | -L | -P] [-g | -h | -k | -m] "
  "[-a | -s | -d depth] [-B blocksize] [-I mask] "
  "[-t threshold] [file ...]\n");
 exit(EX_USAGE);
}
