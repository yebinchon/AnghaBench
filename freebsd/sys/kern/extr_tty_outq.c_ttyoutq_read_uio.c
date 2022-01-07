
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {scalar_t__ uio_resid; } ;
struct ttyoutq_block {char* tob_data; } ;
struct ttyoutq {size_t to_begin; size_t to_end; struct ttyoutq_block* to_firstblock; } ;
struct tty {int dummy; } ;


 size_t MIN (size_t,size_t) ;
 int MPASS (int) ;
 size_t TTYOUTQ_DATASIZE ;
 int TTYOUTQ_RECYCLE (struct ttyoutq*,struct ttyoutq_block*) ;
 int TTYOUTQ_REMOVE_HEAD (struct ttyoutq*) ;
 int memcpy (char*,char*,size_t) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int uiomove (char*,size_t,struct uio*) ;

int
ttyoutq_read_uio(struct ttyoutq *to, struct tty *tp, struct uio *uio)
{

 while (uio->uio_resid > 0) {
  int error;
  struct ttyoutq_block *tob;
  size_t cbegin, cend, clen;


  if (to->to_begin == to->to_end)
   return (0);
  tob = to->to_firstblock;
  if (tob == ((void*)0))
   return (0);







  cbegin = to->to_begin;
  cend = MIN(MIN(to->to_end, to->to_begin + uio->uio_resid),
      TTYOUTQ_DATASIZE);
  clen = cend - cbegin;
  if (cend == TTYOUTQ_DATASIZE || cend == to->to_end) {




   TTYOUTQ_REMOVE_HEAD(to);
   to->to_begin = 0;
   if (to->to_end <= TTYOUTQ_DATASIZE)
    to->to_end = 0;
   else
    to->to_end -= TTYOUTQ_DATASIZE;


   tty_unlock(tp);
   error = uiomove(tob->tob_data + cbegin, clen, uio);
   tty_lock(tp);


   TTYOUTQ_RECYCLE(to, tob);
  } else {
   char ob[TTYOUTQ_DATASIZE - 1];




   memcpy(ob, tob->tob_data + cbegin, clen);
   to->to_begin += clen;
   MPASS(to->to_begin < TTYOUTQ_DATASIZE);


   tty_unlock(tp);
   error = uiomove(ob, clen, uio);
   tty_lock(tp);
  }

  if (error != 0)
   return (error);
 }

 return (0);
}
