
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyoutq_block {int dummy; } ;
struct ttyoutq {scalar_t__ to_quota; scalar_t__ to_nblocks; } ;
struct tty {int dummy; } ;


 int ENXIO ;
 int M_WAITOK ;
 int TTYOUTQ_DATASIZE ;
 int TTYOUTQ_INSERT_TAIL (struct ttyoutq*,struct ttyoutq_block*) ;
 scalar_t__ howmany (size_t,int ) ;
 scalar_t__ tty_gone (struct tty*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttyoutq_zone ;
 struct ttyoutq_block* uma_zalloc (int ,int ) ;
 int uma_zfree (int ,struct ttyoutq_block*) ;

int
ttyoutq_setsize(struct ttyoutq *to, struct tty *tp, size_t size)
{
 struct ttyoutq_block *tob;

 to->to_quota = howmany(size, TTYOUTQ_DATASIZE);

 while (to->to_quota > to->to_nblocks) {
  tty_unlock(tp);
  tob = uma_zalloc(ttyoutq_zone, M_WAITOK);
  tty_lock(tp);

  if (tty_gone(tp)) {
   uma_zfree(ttyoutq_zone, tob);
   return (ENXIO);
  }

  TTYOUTQ_INSERT_TAIL(to, tob);
 }
 return (0);
}
