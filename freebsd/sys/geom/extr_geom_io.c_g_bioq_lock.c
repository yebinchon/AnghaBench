
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_bioq {int bio_queue_lock; } ;


 int mtx_lock (int *) ;

__attribute__((used)) static void
g_bioq_lock(struct g_bioq *bq)
{

 mtx_lock(&bq->bio_queue_lock);
}
