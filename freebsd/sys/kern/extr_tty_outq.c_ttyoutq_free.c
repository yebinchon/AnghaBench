
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyoutq_block {int dummy; } ;
struct ttyoutq {scalar_t__ to_nblocks; struct ttyoutq_block* to_firstblock; scalar_t__ to_quota; } ;


 int MPASS (int) ;
 int TTYOUTQ_REMOVE_HEAD (struct ttyoutq*) ;
 int ttyoutq_flush (struct ttyoutq*) ;
 int ttyoutq_zone ;
 int uma_zfree (int ,struct ttyoutq_block*) ;

void
ttyoutq_free(struct ttyoutq *to)
{
 struct ttyoutq_block *tob;

 ttyoutq_flush(to);
 to->to_quota = 0;

 while ((tob = to->to_firstblock) != ((void*)0)) {
  TTYOUTQ_REMOVE_HEAD(to);
  uma_zfree(ttyoutq_zone, tob);
 }

 MPASS(to->to_nblocks == 0);
}
