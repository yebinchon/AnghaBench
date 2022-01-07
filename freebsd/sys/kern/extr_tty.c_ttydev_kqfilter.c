
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int si_note; } ;
struct TYPE_3__ {int si_note; } ;
struct tty {TYPE_2__ t_outpoll; TYPE_1__ t_inpoll; } ;
struct knote {int kn_filter; int * kn_fop; struct tty* kn_hook; } ;
struct cdev {struct tty* si_drv1; } ;


 int EINVAL ;


 int knlist_add (int *,struct knote*,int) ;
 int tty_kqops_read ;
 int tty_kqops_write ;
 int tty_unlock (struct tty*) ;
 int ttydev_enter (struct tty*) ;

__attribute__((used)) static int
ttydev_kqfilter(struct cdev *dev, struct knote *kn)
{
 struct tty *tp = dev->si_drv1;
 int error;

 error = ttydev_enter(tp);
 if (error)
  return (error);

 switch (kn->kn_filter) {
 case 129:
  kn->kn_hook = tp;
  kn->kn_fop = &tty_kqops_read;
  knlist_add(&tp->t_inpoll.si_note, kn, 1);
  break;
 case 128:
  kn->kn_hook = tp;
  kn->kn_fop = &tty_kqops_write;
  knlist_add(&tp->t_outpoll.si_note, kn, 1);
  break;
 default:
  error = EINVAL;
  break;
 }

 tty_unlock(tp);
 return (error);
}
