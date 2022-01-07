
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEGATX ;
 int buf ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int read (int,int ,int) ;

__attribute__((used)) static void
rdmega(int fd)
{
 int error;

 error = read(fd, buf, MEGATX);
 if (error == -1)
  err(1, "read");
 if (error != MEGATX)
  errx(1, "disk too small for test.");
}
