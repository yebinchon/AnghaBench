
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_bioq {int bio_queue_lock; int bio_queue; } ;


 int MTX_DEF ;
 int TAILQ_INIT (int *) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static void
g_bioq_init(struct g_bioq *bq)
{

 TAILQ_INIT(&bq->bio_queue);
 mtx_init(&bq->bio_queue_lock, "bio queue", ((void*)0), MTX_DEF);
}
