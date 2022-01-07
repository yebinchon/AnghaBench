
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x {char* buf; } ;


 int printf (char*,char*) ;

int doprint(void *_x, void *arg)
{
 struct x *x = _x;
 printf("found element <%s>\n", x->buf);
 return (int)arg;
}
