
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty {int dummy; } ;
struct terminal {TYPE_1__* tm_class; } ;
struct TYPE_2__ {int (* tc_opened ) (struct terminal*,int ) ;} ;


 int stub1 (struct terminal*,int ) ;
 struct terminal* tty_softc (struct tty*) ;

__attribute__((used)) static void
termtty_close(struct tty *tp)
{
 struct terminal *tm = tty_softc(tp);

 tm->tm_class->tc_opened(tm, 0);
}
