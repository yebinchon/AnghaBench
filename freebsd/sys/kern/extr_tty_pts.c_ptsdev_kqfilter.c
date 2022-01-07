
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty {int dummy; } ;
struct TYPE_4__ {int si_note; } ;
struct TYPE_3__ {int si_note; } ;
struct pts_softc {TYPE_2__ pts_inpoll; TYPE_1__ pts_outpoll; } ;
struct knote {int kn_filter; int * kn_fop; } ;
struct file {struct tty* f_data; } ;


 int EINVAL ;


 int knlist_add (int *,struct knote*,int) ;
 int pts_kqops_read ;
 int pts_kqops_write ;
 int tty_lock (struct tty*) ;
 struct pts_softc* tty_softc (struct tty*) ;
 int tty_unlock (struct tty*) ;

__attribute__((used)) static int
ptsdev_kqfilter(struct file *fp, struct knote *kn)
{
 struct tty *tp = fp->f_data;
 struct pts_softc *psc = tty_softc(tp);
 int error = 0;

 tty_lock(tp);

 switch (kn->kn_filter) {
 case 129:
  kn->kn_fop = &pts_kqops_read;
  knlist_add(&psc->pts_outpoll.si_note, kn, 1);
  break;
 case 128:
  kn->kn_fop = &pts_kqops_write;
  knlist_add(&psc->pts_inpoll.si_note, kn, 1);
  break;
 default:
  error = EINVAL;
  break;
 }

 tty_unlock(tp);
 return (error);
}
