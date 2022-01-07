
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct buf {int dummy; } ;
struct TYPE_5__ {int bq_queue; } ;


 int BQ_LOCK (TYPE_1__*) ;
 int BQ_UNLOCK (TYPE_1__*) ;
 struct buf* TAILQ_FIRST (int *) ;
 int bq_remove (TYPE_1__*,struct buf*) ;
 TYPE_1__ bqempty ;

__attribute__((used)) static int
buf_import(void *arg, void **store, int cnt, int domain, int flags)
{
 struct buf *bp;
 int i;

 BQ_LOCK(&bqempty);
 for (i = 0; i < cnt; i++) {
  bp = TAILQ_FIRST(&bqempty.bq_queue);
  if (bp == ((void*)0))
   break;
  bq_remove(&bqempty, bp);
  store[i] = bp;
 }
 BQ_UNLOCK(&bqempty);

 return (i);
}
