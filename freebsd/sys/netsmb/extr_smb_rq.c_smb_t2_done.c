
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_t2rq {int t2_flags; int t2_rdata; int t2_rparam; int t2_tdata; int t2_tparam; } ;


 int M_SMBRQ ;
 int SMBT2_ALLOCED ;
 int free (struct smb_t2rq*,int ) ;
 int mb_done (int *) ;
 int md_done (int *) ;

void
smb_t2_done(struct smb_t2rq *t2p)
{
 mb_done(&t2p->t2_tparam);
 mb_done(&t2p->t2_tdata);
 md_done(&t2p->t2_rparam);
 md_done(&t2p->t2_rdata);
 if (t2p->t2_flags & SMBT2_ALLOCED)
  free(t2p, M_SMBRQ);
}
