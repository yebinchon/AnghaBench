
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp ;
typedef int off_t ;
struct TYPE_2__ {int rootfd; } ;
typedef int FILE ;


 int O_RDWR ;
 int SEEK_SET ;
 TYPE_1__ conf ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int * fgets (char*,int,int *) ;
 scalar_t__ fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int fwrite (char*,int,int,int *) ;
 int openat (int ,char*,int ) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;

__attribute__((used)) static void
rmopie(char const * name)
{
 char tmp[1014];
 FILE *fp;
 int fd;
 size_t len;
 off_t atofs = 0;

 if ((fd = openat(conf.rootfd, "etc/opiekeys", O_RDWR)) == -1)
  return;

 fp = fdopen(fd, "r+");
 len = strlen(name);

 while (fgets(tmp, sizeof(tmp), fp) != ((void*)0)) {
  if (strncmp(name, tmp, len) == 0 && tmp[len]==' ') {

   if (fseek(fp, atofs, SEEK_SET) == 0)
    fwrite("#", 1, 1, fp);
   break;
  }
  atofs = ftell(fp);
 }



 fclose(fp);
}
