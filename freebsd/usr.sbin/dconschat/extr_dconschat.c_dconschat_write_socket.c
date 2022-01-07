
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;
 int verbose ;
 int write (int,char*,int) ;

__attribute__((used)) static int
dconschat_write_socket(int fd, char *buf, int len)
{
 write(fd, buf, len);
 if (verbose > 1) {
  buf[len] = 0;
  printf("<- %s\n", buf);
 }
 return (0);
}
