
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alq {struct alq* aq_entbuf; int aq_mtx; } ;


 int M_ALD ;
 int alq_shutdown (struct alq*) ;
 int free (struct alq*,int ) ;
 int mtx_destroy (int *) ;

void
alq_destroy(struct alq *alq)
{

 alq_shutdown(alq);

 mtx_destroy(&alq->aq_mtx);
 free(alq->aq_entbuf, M_ALD);
 free(alq, M_ALD);
}
