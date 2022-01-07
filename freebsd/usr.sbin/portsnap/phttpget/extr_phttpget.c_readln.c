
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int BUFSIZ ;
 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int memmove (char*,char*,int) ;
 int recv (int,char*,int,int ) ;
 int * strnstr (char*,char*,int) ;

__attribute__((used)) static int
readln(int sd, char * resbuf, int * resbuflen, int * resbufpos)
{
 ssize_t len;

 while (strnstr(resbuf + *resbufpos, "\r\n",
     *resbuflen - *resbufpos) == ((void*)0)) {

  if (*resbufpos != 0) {
   memmove(resbuf, resbuf + *resbufpos,
       *resbuflen - *resbufpos);
   *resbuflen -= *resbufpos;
   *resbufpos = 0;
  }


  if (*resbuflen == BUFSIZ)
   return -1;


  len = recv(sd, resbuf + *resbuflen, BUFSIZ - *resbuflen, 0);
  if ((len == 0) ||
      ((len == -1) && (errno != EINTR)))
   return -1;

  if (len != -1)
   *resbuflen += len;
 }

 return 0;
}
