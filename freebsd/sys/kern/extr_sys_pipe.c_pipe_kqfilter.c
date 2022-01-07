
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int si_note; } ;
struct pipe {TYPE_2__ pipe_sel; TYPE_1__* pipe_peer; } ;
struct knote {int kn_filter; struct pipe* kn_hook; int * kn_fop; } ;
struct file {int f_flag; struct pipe* f_data; } ;
struct TYPE_3__ {int pipe_present; } ;


 int EINVAL ;
 int EPIPE ;


 int FREAD ;
 int FWRITE ;
 int PIPE_ACTIVE ;
 int PIPE_LOCK (struct pipe*) ;
 struct pipe* PIPE_PEER (struct pipe*) ;
 int PIPE_UNLOCK (struct pipe*) ;
 int knlist_add (int *,struct knote*,int) ;
 int pipe_nfiltops ;
 int pipe_rfiltops ;
 int pipe_wfiltops ;

__attribute__((used)) static int
pipe_kqfilter(struct file *fp, struct knote *kn)
{
 struct pipe *cpipe;






 if ((kn->kn_filter == 129) && !(fp->f_flag & FREAD)) {
  kn->kn_fop = &pipe_nfiltops;
  return (0);
 }
 if ((kn->kn_filter == 128) && !(fp->f_flag & FWRITE)) {
  kn->kn_fop = &pipe_nfiltops;
  return (0);
 }
 cpipe = fp->f_data;
 PIPE_LOCK(cpipe);
 switch (kn->kn_filter) {
 case 129:
  kn->kn_fop = &pipe_rfiltops;
  break;
 case 128:
  kn->kn_fop = &pipe_wfiltops;
  if (cpipe->pipe_peer->pipe_present != PIPE_ACTIVE) {

   PIPE_UNLOCK(cpipe);
   return (EPIPE);
  }
  cpipe = PIPE_PEER(cpipe);
  break;
 default:
  PIPE_UNLOCK(cpipe);
  return (EINVAL);
 }

 kn->kn_hook = cpipe;
 knlist_add(&cpipe->pipe_sel.si_note, kn, 1);
 PIPE_UNLOCK(cpipe);
 return (0);
}
