
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int main_cons ;
 int xencons_putc (int *,int,int) ;

__attribute__((used)) static void
xencons_cnputc(struct consdev *dev, int c)
{




 xencons_putc(&main_cons, c, 1);
}
