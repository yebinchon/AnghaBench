
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 scalar_t__ ftruncate (int,int) ;
 int mkstemp (char*) ;
 int remove (char*) ;

__attribute__((used)) static int
getafile(void)
{
 int fd;

 char temp[] = "/tmp/dup2XXXXXXXXX";
 if ((fd = mkstemp(temp)) < 0)
  err(1, "mkstemp");
 remove(temp);
 if (ftruncate(fd, 1024) != 0)
  err(1, "ftruncate");
 return (fd);
}
