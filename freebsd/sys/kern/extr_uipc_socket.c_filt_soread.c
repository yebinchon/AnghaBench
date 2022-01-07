
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sb_ctl; int sb_state; scalar_t__ sb_lowat; } ;
struct socket {scalar_t__ sol_qlen; TYPE_2__ so_rcv; scalar_t__ so_error; int sol_comp; } ;
struct knote {scalar_t__ kn_data; int kn_sfflags; scalar_t__ kn_sdata; scalar_t__ kn_fflags; int kn_flags; TYPE_1__* kn_fp; } ;
struct TYPE_4__ {struct socket* f_data; } ;


 int EV_EOF ;
 int HHOOK_FILT_SOREAD ;
 int NOTE_LOWAT ;
 int SBS_CANTRCVMORE ;
 int SOCKBUF_LOCK_ASSERT (TYPE_2__*) ;
 int SOCK_LOCK_ASSERT (struct socket*) ;
 scalar_t__ SOLISTENING (struct socket*) ;
 int TAILQ_EMPTY (int *) ;
 int hhook_run_socket (struct socket*,int *,int ) ;
 scalar_t__ sbavail (TYPE_2__*) ;

__attribute__((used)) static int
filt_soread(struct knote *kn, long hint)
{
 struct socket *so;

 so = kn->kn_fp->f_data;

 if (SOLISTENING(so)) {
  SOCK_LOCK_ASSERT(so);
  kn->kn_data = so->sol_qlen;
  if (so->so_error) {
   kn->kn_flags |= EV_EOF;
   kn->kn_fflags = so->so_error;
   return (1);
  }
  return (!TAILQ_EMPTY(&so->sol_comp));
 }

 SOCKBUF_LOCK_ASSERT(&so->so_rcv);

 kn->kn_data = sbavail(&so->so_rcv) - so->so_rcv.sb_ctl;
 if (so->so_rcv.sb_state & SBS_CANTRCVMORE) {
  kn->kn_flags |= EV_EOF;
  kn->kn_fflags = so->so_error;
  return (1);
 } else if (so->so_error)
  return (1);

 if (kn->kn_sfflags & NOTE_LOWAT) {
  if (kn->kn_data >= kn->kn_sdata)
   return (1);
 } else if (sbavail(&so->so_rcv) >= so->so_rcv.sb_lowat)
  return (1);


 return (hhook_run_socket(so, ((void*)0), HHOOK_FILT_SOREAD));
}
