
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyinq_block {int tib_data; struct ttyinq_block* tib_next; } ;
struct ttyinq {struct ttyinq_block* ti_firstblock; scalar_t__ ti_end; scalar_t__ ti_reprint; scalar_t__ ti_linestart; scalar_t__ ti_begin; } ;


 int bzero (int *,int) ;
 scalar_t__ ttyinq_flush_secure ;

void
ttyinq_flush(struct ttyinq *ti)
{
 struct ttyinq_block *tib;

 ti->ti_begin = 0;
 ti->ti_linestart = 0;
 ti->ti_reprint = 0;
 ti->ti_end = 0;


 if (ttyinq_flush_secure) {
  for (tib = ti->ti_firstblock; tib != ((void*)0); tib = tib->tib_next)
   bzero(&tib->tib_data, sizeof tib->tib_data);
 }
}
