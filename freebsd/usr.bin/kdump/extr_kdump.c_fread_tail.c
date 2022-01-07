
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clearerr (int ) ;
 int fread (void*,int,int,int ) ;
 int sleep (int) ;
 int stdin ;
 scalar_t__ tail ;

int
fread_tail(void *buf, int size, int num)
{
 int i;

 while ((i = fread(buf, size, num, stdin)) == 0 && tail) {
  sleep(1);
  clearerr(stdin);
 }
 return (i);
}
