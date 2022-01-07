
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int callout_stop (int *) ;
 int cfe_timer ;

__attribute__((used)) static void
cfe_tty_close(struct tty *tp)
{

 callout_stop(&cfe_timer);
}
