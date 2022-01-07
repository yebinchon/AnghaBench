
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 int utime (char const*,int *) ;

int
do_utime(const char *pfile)
{
 int ret = 0;

 if (pfile == ((void*)0)) {
  return (-1);
 }




 if (utime(pfile, ((void*)0)) == -1) {
  ret = errno;
 }
 if (ret != 0) {
  fprintf(stderr, "utime(%s, NULL)\n", pfile);
  exit(1);
 }

 return (ret);
}
