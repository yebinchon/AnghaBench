
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALL_MODE ;
 int chmod (char const*,int ) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

int
do_chmod(const char *pfile)
{
 int ret = 0;

 if (pfile == ((void*)0)) {
  return (-1);
 }

 if (chmod(pfile, ALL_MODE) == -1) {
  ret = errno;
 }
 if (ret != 0) {
  fprintf(stderr, "chmod(%s, ALL_MODE)\n", pfile);
  exit(1);
 }

 return (ret);
}
