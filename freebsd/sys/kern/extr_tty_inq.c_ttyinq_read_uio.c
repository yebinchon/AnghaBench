
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {size_t uio_resid; } ;
struct ttyinq_block {char* tib_data; } ;
struct ttyinq {size_t ti_begin; size_t ti_linestart; size_t ti_end; size_t ti_reprint; struct ttyinq_block* ti_firstblock; } ;
struct tty {int dummy; } ;


 int CORRECT_BLOCK (size_t) ;
 int ENXIO ;
 size_t MIN (size_t,size_t) ;
 int MPASS (int) ;
 size_t TTYINQ_DATASIZE ;
 int TTYINQ_RECYCLE (struct ttyinq*,struct ttyinq_block*) ;
 int TTYINQ_REMOVE_HEAD (struct ttyinq*) ;
 int memcpy (char*,char*,size_t) ;
 scalar_t__ tty_gone (struct tty*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int uiomove (char*,size_t,struct uio*) ;

int
ttyinq_read_uio(struct ttyinq *ti, struct tty *tp, struct uio *uio,
    size_t rlen, size_t flen)
{

 MPASS(rlen <= uio->uio_resid);

 while (rlen > 0) {
  int error;
  struct ttyinq_block *tib;
  size_t cbegin, cend, clen;


  if (ti->ti_begin == ti->ti_linestart)
   return (0);
  tib = ti->ti_firstblock;
  if (tib == ((void*)0))
   return (0);







  cbegin = ti->ti_begin;
  cend = MIN(MIN(ti->ti_linestart, ti->ti_begin + rlen),
      TTYINQ_DATASIZE);
  clen = cend - cbegin;
  MPASS(clen >= flen);
  rlen -= clen;
  if (cend == TTYINQ_DATASIZE || cend == ti->ti_end) {




   TTYINQ_REMOVE_HEAD(ti);
   ti->ti_begin = 0;
   do { if (ti->ti_linestart <= TTYINQ_DATASIZE) ti->ti_linestart = 0; else ti->ti_linestart -= TTYINQ_DATASIZE; } while (0);
   do { if (ti->ti_reprint <= TTYINQ_DATASIZE) ti->ti_reprint = 0; else ti->ti_reprint -= TTYINQ_DATASIZE; } while (0);
   do { if (ti->ti_end <= TTYINQ_DATASIZE) ti->ti_end = 0; else ti->ti_end -= TTYINQ_DATASIZE; } while (0);







   tty_unlock(tp);
   error = uiomove(tib->tib_data + cbegin,
       clen - flen, uio);
   tty_lock(tp);


   TTYINQ_RECYCLE(ti, tib);
  } else {
   char ob[TTYINQ_DATASIZE - 1];




   memcpy(ob, tib->tib_data + cbegin, clen - flen);
   ti->ti_begin += clen;
   MPASS(ti->ti_begin < TTYINQ_DATASIZE);


   tty_unlock(tp);
   error = uiomove(ob, clen - flen, uio);
   tty_lock(tp);
  }

  if (error != 0)
   return (error);
  if (tty_gone(tp))
   return (ENXIO);
 }

 return (0);
}
