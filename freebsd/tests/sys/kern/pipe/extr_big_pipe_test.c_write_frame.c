
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;


 scalar_t__ EAGAIN ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*,int) ;
 int exit (int) ;
 int select (int,int *,int *,int *,int *) ;
 int warn (char*) ;
 int write (int,char*,unsigned long) ;

__attribute__((used)) static void
write_frame(int fd, char *buf, unsigned long buflen)
{
 fd_set wfd;
 int i;

 while (buflen) {
  FD_ZERO(&wfd);
  FD_SET(fd, &wfd);
  i = select(fd+1, ((void*)0), &wfd, ((void*)0), ((void*)0));
  if (i < 0)
   err(1, "select failed");
  if (i != 1) {
   errx(1, "select returned unexpected value %d\n", i);
   exit(1);
  }
  i = write(fd, buf, buflen);
  if (i < 0) {
   if (errno != EAGAIN)
    warn("write failed");
   exit(1);
  }
  buf += i;
  buflen -= i;
 }
}
