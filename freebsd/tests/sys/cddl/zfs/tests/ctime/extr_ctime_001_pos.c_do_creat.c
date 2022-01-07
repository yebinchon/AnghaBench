
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALL_MODE ;
 int close (int) ;
 int creat (char const*,int ) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

int
do_creat(const char *pfile)
{
 int fd, ret = 0;

 if (pfile == ((void*)0)) {
  return (-1);
 }

 if ((fd = creat(pfile, ALL_MODE)) == -1) {
  ret = errno;
 }
 if (fd != -1) {
  (void) close(fd);
 }

 if (ret != 0) {
  fprintf(stderr, "creat(%s, ALL_MODE)\n", pfile);
  exit(1);
 }

 return (ret);
}
