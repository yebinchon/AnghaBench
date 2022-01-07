
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufqueue {scalar_t__ bq_len; } ;
struct bufdomain {scalar_t__ bd_lim; struct bufqueue* bd_subq; } ;


 int BQ_LOCK (struct bufqueue*) ;
 int BQ_UNLOCK (struct bufqueue*) ;
 int bd_flush (struct bufdomain*,struct bufqueue*) ;
 int mp_maxid ;

__attribute__((used)) static int
bd_flushall(struct bufdomain *bd)
{
 struct bufqueue *bq;
 int flushed;
 int i;

 if (bd->bd_lim == 0)
  return (0);
 flushed = 0;
 for (i = 0; i <= mp_maxid; i++) {
  bq = &bd->bd_subq[i];
  if (bq->bq_len == 0)
   continue;
  BQ_LOCK(bq);
  bd_flush(bd, bq);
  BQ_UNLOCK(bq);
  flushed++;
 }

 return (flushed);
}
