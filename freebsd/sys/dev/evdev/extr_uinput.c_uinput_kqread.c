
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uinput_cdev_state {int dummy; } ;
struct knote {scalar_t__ kn_hook; } ;


 int UINPUT_EMPTYQ (struct uinput_cdev_state*) ;
 int UINPUT_LOCK_ASSERT (struct uinput_cdev_state*) ;

__attribute__((used)) static int
uinput_kqread(struct knote *kn, long hint)
{
 struct uinput_cdev_state *state;
 int ret;

 state = (struct uinput_cdev_state *)kn->kn_hook;

 UINPUT_LOCK_ASSERT(state);

 ret = !UINPUT_EMPTYQ(state);
 return (ret);
}
