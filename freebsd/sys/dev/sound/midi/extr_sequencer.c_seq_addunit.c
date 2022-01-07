
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {struct seq_softc* b; } ;
struct seq_softc {int unit; TYPE_2__ in_q; TYPE_2__ out_q; struct seq_softc* midi_flags; struct seq_softc* midis; TYPE_1__* musicdev; TYPE_1__* seqdev; int * mapper; int mapper_cookie; int th_cv; int in_cv; int out_cv; int reset_cv; int empty_cv; int state_cv; int seq_lock; scalar_t__ flags; } ;
typedef int kobj_t ;
struct TYPE_3__ {struct seq_softc* si_drv1; } ;


 int EINVAL ;
 int ENOMEM ;
 int EV_SZ ;
 int GID_WHEEL ;
 int MIDIMKMINOR (int,int ,int ) ;
 int MIDIQ_INIT (TYPE_2__,int *,int) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_TEMP ;
 int M_ZERO ;
 int RFHIGHPID ;
 int SEQ_DEBUG (int,int ) ;
 int SND_DEV_MUSIC ;
 int SND_DEV_SEQ ;
 int UID_ROOT ;
 int cv_init (int *,char*) ;
 int destroy_dev (TYPE_1__*) ;
 int free (struct seq_softc*,int ) ;
 int kobj_init (int ,int *) ;
 int kproc_create (int ,struct seq_softc*,int *,int ,int ,char*,int) ;
 void* make_dev (int *,int ,int ,int ,int,char*,int) ;
 void* malloc (int,int ,int) ;
 int * midimapper_addseq (struct seq_softc*,int*,int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nseq ;
 int printf (char*,...) ;
 int seq_cdevsw ;
 int seq_eventthread ;
 int seqinfo_mtx ;
 struct seq_softc** seqs ;
 int sequencer_class ;

__attribute__((used)) static int
seq_addunit(void)
{
 struct seq_softc *scp;
 int ret;
 u_char *buf;


 ret = ENOMEM;
 scp = malloc(sizeof(*scp), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (scp == ((void*)0)) {
  SEQ_DEBUG(1, printf("seq_addunit: softc allocation failed.\n"));
  goto err;
 }
 kobj_init((kobj_t)scp, &sequencer_class);

 buf = malloc(sizeof(*buf) * EV_SZ * 1024, M_TEMP, M_NOWAIT | M_ZERO);
 if (buf == ((void*)0))
  goto err;
 MIDIQ_INIT(scp->in_q, buf, EV_SZ * 1024);
 buf = malloc(sizeof(*buf) * EV_SZ * 1024, M_TEMP, M_NOWAIT | M_ZERO);
 if (buf == ((void*)0))
  goto err;
 MIDIQ_INIT(scp->out_q, buf, EV_SZ * 1024);
 ret = EINVAL;

 scp->midis = malloc(sizeof(kobj_t) * 32, M_TEMP, M_NOWAIT | M_ZERO);
 scp->midi_flags = malloc(sizeof(*scp->midi_flags) * 32, M_TEMP,
     M_NOWAIT | M_ZERO);

 if (scp->midis == ((void*)0) || scp->midi_flags == ((void*)0))
  goto err;

 scp->flags = 0;

 mtx_init(&scp->seq_lock, "seqflq", ((void*)0), 0);
 cv_init(&scp->state_cv, "seqstate");
 cv_init(&scp->empty_cv, "seqempty");
 cv_init(&scp->reset_cv, "seqtimer");
 cv_init(&scp->out_cv, "seqqout");
 cv_init(&scp->in_cv, "seqqin");
 cv_init(&scp->th_cv, "seqstart");





 scp->mapper = midimapper_addseq(scp, &scp->unit, &scp->mapper_cookie);
 if (scp->mapper == ((void*)0))
  goto err;

 scp->seqdev = make_dev(&seq_cdevsw,
     MIDIMKMINOR(scp->unit, SND_DEV_SEQ, 0), UID_ROOT,
     GID_WHEEL, 0666, "sequencer%d", scp->unit);

 scp->musicdev = make_dev(&seq_cdevsw,
     MIDIMKMINOR(scp->unit, SND_DEV_MUSIC, 0), UID_ROOT,
     GID_WHEEL, 0666, "music%d", scp->unit);

 if (scp->seqdev == ((void*)0) || scp->musicdev == ((void*)0))
  goto err;




 ret =
     kproc_create
     (seq_eventthread, scp, ((void*)0), RFHIGHPID, 0,
     "sequencer %02d", scp->unit);

 if (ret)
  goto err;

 scp->seqdev->si_drv1 = scp->musicdev->si_drv1 = scp;

 SEQ_DEBUG(2, printf("sequencer %d created scp %p\n", scp->unit, scp));

 ret = 0;

 mtx_lock(&seqinfo_mtx);
 seqs[nseq++] = scp;
 mtx_unlock(&seqinfo_mtx);

 goto ok;

err:
 if (scp != ((void*)0)) {
  if (scp->seqdev != ((void*)0))
   destroy_dev(scp->seqdev);
  if (scp->musicdev != ((void*)0))
   destroy_dev(scp->musicdev);



  if (scp->midis != ((void*)0))
   free(scp->midis, M_TEMP);
  if (scp->midi_flags != ((void*)0))
   free(scp->midi_flags, M_TEMP);
  if (scp->out_q.b)
   free(scp->out_q.b, M_TEMP);
  if (scp->in_q.b)
   free(scp->in_q.b, M_TEMP);
  free(scp, M_DEVBUF);
 }
ok:
 return ret;
}
