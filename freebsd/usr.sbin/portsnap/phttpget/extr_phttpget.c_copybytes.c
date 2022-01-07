
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int off_t ;


 int BUFSIZ ;
 scalar_t__ EINTR ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int recv (int,char*,int ,int ) ;
 int write (int,char*,int) ;

__attribute__((used)) static int
copybytes(int sd, int fd, off_t copylen, char * resbuf, int * resbuflen,
    int * resbufpos)
{
 ssize_t len;

 while (copylen) {

  len = *resbuflen - *resbufpos;
  if (copylen < len)
   len = copylen;
  if (len > 0) {
   if (fd != -1)
    len = write(fd, resbuf + *resbufpos, len);
   if (len == -1)
    err(1, "write");
   *resbufpos += len;
   copylen -= len;
   continue;
  }


  len = recv(sd, resbuf, BUFSIZ, 0);
  if (len == -1) {
   if (errno == EINTR)
    continue;
   return -1;
  } else if (len == 0) {
   return -2;
  } else {
   *resbuflen = len;
   *resbufpos = 0;
  }
 }

 return 0;
}
