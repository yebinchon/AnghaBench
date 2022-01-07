
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct uinput_cdev_state {TYPE_1__ ucs_selp; } ;
struct knote {scalar_t__ kn_hook; } ;


 int knlist_remove (int *,struct knote*,int ) ;

__attribute__((used)) static void
uinput_kqdetach(struct knote *kn)
{
 struct uinput_cdev_state *state;

 state = (struct uinput_cdev_state *)kn->kn_hook;
 knlist_remove(&state->ucs_selp.si_note, kn, 0);
}
