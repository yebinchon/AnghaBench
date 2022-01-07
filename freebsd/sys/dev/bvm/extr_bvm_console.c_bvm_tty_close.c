
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int MA_OWNED ;
 int bvm_timer ;
 int callout_stop (int *) ;
 int tty_lock_assert (struct tty*,int ) ;

__attribute__((used)) static void
bvm_tty_close(struct tty *tp)
{

 tty_lock_assert(tp, MA_OWNED);
 callout_stop(&bvm_timer);
}
