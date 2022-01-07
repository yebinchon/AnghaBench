
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 scalar_t__ mouse_level ;

__attribute__((used)) static void
smdev_close(struct tty *tp)
{
 mouse_level = 0;
}
