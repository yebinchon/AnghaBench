
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyinq_block {int dummy; } ;
struct ttyinq {scalar_t__ ti_nblocks; struct ttyinq_block* ti_firstblock; scalar_t__ ti_quota; } ;


 int MPASS (int) ;
 int TTYINQ_REMOVE_HEAD (struct ttyinq*) ;
 int ttyinq_flush (struct ttyinq*) ;
 int ttyinq_zone ;
 int uma_zfree (int ,struct ttyinq_block*) ;

void
ttyinq_free(struct ttyinq *ti)
{
 struct ttyinq_block *tib;

 ttyinq_flush(ti);
 ti->ti_quota = 0;

 while ((tib = ti->ti_firstblock) != ((void*)0)) {
  TTYINQ_REMOVE_HEAD(ti);
  uma_zfree(ttyinq_zone, tib);
 }

 MPASS(ti->ti_nblocks == 0);
}
