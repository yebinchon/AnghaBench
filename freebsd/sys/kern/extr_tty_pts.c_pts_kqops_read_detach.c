
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty {int dummy; } ;
struct TYPE_2__ {int si_note; } ;
struct pts_softc {TYPE_1__ pts_outpoll; } ;
struct knote {struct file* kn_fp; } ;
struct file {struct tty* f_data; } ;


 int knlist_remove (int *,struct knote*,int ) ;
 struct pts_softc* tty_softc (struct tty*) ;

__attribute__((used)) static void
pts_kqops_read_detach(struct knote *kn)
{
 struct file *fp = kn->kn_fp;
 struct tty *tp = fp->f_data;
 struct pts_softc *psc = tty_softc(tp);

 knlist_remove(&psc->pts_outpoll.si_note, kn, 0);
}
