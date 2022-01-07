
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct tty {TYPE_1__ t_outpoll; } ;
struct knote {struct tty* kn_hook; } ;


 int knlist_remove (int *,struct knote*,int ) ;

__attribute__((used)) static void
tty_kqops_write_detach(struct knote *kn)
{
 struct tty *tp = kn->kn_hook;

 knlist_remove(&tp->t_outpoll.si_note, kn, 0);
}
