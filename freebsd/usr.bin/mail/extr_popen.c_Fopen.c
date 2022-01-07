
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int F_SETFD ;
 int fcntl (int ,int ,int) ;
 int fileno (int *) ;
 int * fopen (char const*,char const*) ;
 int register_file (int *,int ,int ) ;

FILE *
Fopen(const char *path, const char *mode)
{
 FILE *fp;

 if ((fp = fopen(path, mode)) != ((void*)0)) {
  register_file(fp, 0, 0);
  (void)fcntl(fileno(fp), F_SETFD, 1);
 }
 return (fp);
}
