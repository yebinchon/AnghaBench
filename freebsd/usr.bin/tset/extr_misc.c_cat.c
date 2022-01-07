
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int O_RDONLY ;
 int STDERR_FILENO ;
 int close (int) ;
 int err (int,char*,...) ;
 int open (char*,int ,int ) ;
 int read (int,char*,int) ;
 int write (int ,char*,int) ;

void
cat(char *file)
{
 register int fd, nr, nw;
 char buf[1024];

 if ((fd = open(file, O_RDONLY, 0)) < 0)
  err(1, "%s", file);

 while ((nr = read(fd, buf, sizeof(buf))) > 0)
  if ((nw = write(STDERR_FILENO, buf, nr)) == -1)
   err(1, "write to stderr");
 if (nr != 0)
  err(1, "%s", file);
 (void)close(fd);
}
