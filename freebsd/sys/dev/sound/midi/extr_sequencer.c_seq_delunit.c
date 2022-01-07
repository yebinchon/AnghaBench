
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct seq_softc* b; } ;
struct TYPE_3__ {struct seq_softc* b; } ;
struct seq_softc {int done; int seq_lock; TYPE_2__ in_q; TYPE_1__ out_q; struct seq_softc* midi_flags; struct seq_softc* midis; int * musicdev; int * seqdev; int th_cv; int in_cv; int out_cv; int reset_cv; int empty_cv; int state_cv; scalar_t__ playing; } ;


 int M_DEVBUF ;
 int M_TEMP ;
 int SEQ_DEBUG (int,int ) ;
 int cv_broadcast (int *) ;
 int cv_destroy (int *) ;
 int cv_wait (int *,int *) ;
 int destroy_dev (int *) ;
 int free (struct seq_softc*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nseq ;
 int printf (char*) ;
 int seqinfo_mtx ;
 struct seq_softc** seqs ;

__attribute__((used)) static int
seq_delunit(int unit)
{
 struct seq_softc *scp = seqs[unit];
 int i;


 SEQ_DEBUG(1, printf("seq_delunit: 1 \n"));
 mtx_lock(&scp->seq_lock);

 scp->playing = 0;
 scp->done = 1;
 cv_broadcast(&scp->out_cv);
 cv_broadcast(&scp->state_cv);
 cv_broadcast(&scp->reset_cv);
 SEQ_DEBUG(1, printf("seq_delunit: 2 \n"));
 cv_wait(&scp->th_cv, &scp->seq_lock);
 SEQ_DEBUG(1, printf("seq_delunit: 3.0 \n"));
 mtx_unlock(&scp->seq_lock);
 SEQ_DEBUG(1, printf("seq_delunit: 3.1 \n"));

 cv_destroy(&scp->state_cv);
 SEQ_DEBUG(1, printf("seq_delunit: 4 \n"));
 cv_destroy(&scp->empty_cv);
 SEQ_DEBUG(1, printf("seq_delunit: 5 \n"));
 cv_destroy(&scp->reset_cv);
 SEQ_DEBUG(1, printf("seq_delunit: 6 \n"));
 cv_destroy(&scp->out_cv);
 SEQ_DEBUG(1, printf("seq_delunit: 7 \n"));
 cv_destroy(&scp->in_cv);
 SEQ_DEBUG(1, printf("seq_delunit: 8 \n"));
 cv_destroy(&scp->th_cv);

 SEQ_DEBUG(1, printf("seq_delunit: 10 \n"));
 if (scp->seqdev)
  destroy_dev(scp->seqdev);
 SEQ_DEBUG(1, printf("seq_delunit: 11 \n"));
 if (scp->musicdev)
  destroy_dev(scp->musicdev);
 SEQ_DEBUG(1, printf("seq_delunit: 12 \n"));
 scp->seqdev = scp->musicdev = ((void*)0);
 if (scp->midis != ((void*)0))
  free(scp->midis, M_TEMP);
 SEQ_DEBUG(1, printf("seq_delunit: 13 \n"));
 if (scp->midi_flags != ((void*)0))
  free(scp->midi_flags, M_TEMP);
 SEQ_DEBUG(1, printf("seq_delunit: 14 \n"));
 free(scp->out_q.b, M_TEMP);
 SEQ_DEBUG(1, printf("seq_delunit: 15 \n"));
 free(scp->in_q.b, M_TEMP);

 SEQ_DEBUG(1, printf("seq_delunit: 16 \n"));

 mtx_destroy(&scp->seq_lock);
 SEQ_DEBUG(1, printf("seq_delunit: 17 \n"));
 free(scp, M_DEVBUF);

 mtx_lock(&seqinfo_mtx);
 for (i = unit; i < (nseq - 1); i++)
  seqs[i] = seqs[i + 1];
 nseq--;
 mtx_unlock(&seqinfo_mtx);

 return 0;
}
