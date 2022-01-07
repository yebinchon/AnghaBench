
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct pts_softc {int pts_flags; } ;
struct knote {int kn_data; int kn_flags; struct file* kn_fp; } ;
struct file {struct tty* f_data; } ;


 int EV_EOF ;
 int PTS_FINISHED ;
 struct pts_softc* tty_softc (struct tty*) ;
 int ttydisc_getc_poll (struct tty*) ;

__attribute__((used)) static int
pts_kqops_read_event(struct knote *kn, long hint)
{
 struct file *fp = kn->kn_fp;
 struct tty *tp = fp->f_data;
 struct pts_softc *psc = tty_softc(tp);

 if (psc->pts_flags & PTS_FINISHED) {
  kn->kn_flags |= EV_EOF;
  return (1);
 } else {
  kn->kn_data = ttydisc_getc_poll(tp);
  return (kn->kn_data > 0);
 }
}
