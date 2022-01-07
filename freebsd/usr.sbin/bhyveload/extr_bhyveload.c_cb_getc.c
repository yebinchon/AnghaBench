
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int consin_fd ;
 int read (int ,char*,int) ;

__attribute__((used)) static int
cb_getc(void *arg)
{
 char c;

 if (read(consin_fd, &c, 1) == 1)
  return (c);
 return (-1);
}
