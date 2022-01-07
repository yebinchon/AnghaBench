
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct termios {int c_ospeed; int c_ispeed; } ;


 int B0 ;
 int TTYDEF_SPEED ;

__attribute__((used)) static int
smdev_param(struct tty *tp, struct termios *t)
{





 t->c_ispeed = TTYDEF_SPEED;
 t->c_ospeed = B0;

 return (0);
}
