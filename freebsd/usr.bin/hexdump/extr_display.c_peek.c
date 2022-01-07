
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int EOF ;
 int getchar () ;
 int length ;
 int stdin ;
 int ungetc (int,int ) ;

size_t
peek(u_char *buf, size_t nbytes)
{
 size_t n, nread;
 int c;

 if (length != -1 && nbytes > (unsigned int)length)
  nbytes = length;
 nread = 0;
 while (nread < nbytes && (c = getchar()) != EOF) {
  *buf++ = c;
  nread++;
 }
 n = nread;
 while (n-- > 0) {
  c = *--buf;
  ungetc(c, stdin);
 }
 return (nread);
}
