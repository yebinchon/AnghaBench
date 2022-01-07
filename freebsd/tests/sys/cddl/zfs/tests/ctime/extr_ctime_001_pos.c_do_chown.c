
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chown (char const*,scalar_t__,scalar_t__) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char const*,int,int) ;
 scalar_t__ getgid () ;
 scalar_t__ getuid () ;
 int stderr ;

int
do_chown(const char *pfile)
{
 int ret = 0;

 if (pfile == ((void*)0)) {
  return (-1);
 }

 if (chown(pfile, getuid(), getgid()) == -1) {
  ret = errno;
 }
 if (ret != 0) {
  fprintf(stderr, "chown(%s, %d, %d)\n", pfile, (int)getuid(),
      (int)getgid());
  exit(1);
 }

 return (ret);
}
