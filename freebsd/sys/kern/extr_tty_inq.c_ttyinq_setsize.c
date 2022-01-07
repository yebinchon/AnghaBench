
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyinq_block {int dummy; } ;
struct ttyinq {scalar_t__ ti_quota; scalar_t__ ti_nblocks; } ;
struct tty {int dummy; } ;


 int ENXIO ;
 int M_WAITOK ;
 int TTYINQ_DATASIZE ;
 int TTYINQ_INSERT_TAIL (struct ttyinq*,struct ttyinq_block*) ;
 scalar_t__ howmany (size_t,int ) ;
 scalar_t__ tty_gone (struct tty*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttyinq_zone ;
 struct ttyinq_block* uma_zalloc (int ,int ) ;
 int uma_zfree (int ,struct ttyinq_block*) ;

int
ttyinq_setsize(struct ttyinq *ti, struct tty *tp, size_t size)
{
 struct ttyinq_block *tib;

 ti->ti_quota = howmany(size, TTYINQ_DATASIZE);

 while (ti->ti_quota > ti->ti_nblocks) {
  tty_unlock(tp);
  tib = uma_zalloc(ttyinq_zone, M_WAITOK);
  tty_lock(tp);

  if (tty_gone(tp)) {
   uma_zfree(ttyinq_zone, tib);
   return (ENXIO);
  }

  TTYINQ_INSERT_TAIL(ti, tib);
 }
 return (0);
}
