
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int F_SETFD ;
 int fcntl (int ,int ,int) ;
 int * fdopen (int,char const*) ;
 int fileno (int *) ;
 int register_file (int *,int ,int ) ;

FILE *
Fdopen(int fd, const char *mode)
{
 FILE *fp;

 if ((fp = fdopen(fd, mode)) != ((void*)0)) {
  register_file(fp, 0, 0);
  (void)fcntl(fileno(fp), F_SETFD, 1);
 }
 return (fp);
}
