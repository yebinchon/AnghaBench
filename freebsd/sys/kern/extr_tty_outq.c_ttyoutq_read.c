
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyoutq_block {scalar_t__ tob_data; } ;
struct ttyoutq {size_t to_begin; size_t to_end; struct ttyoutq_block* to_firstblock; } ;


 size_t MIN (size_t,size_t) ;
 size_t TTYOUTQ_DATASIZE ;
 int TTYOUTQ_RECYCLE (struct ttyoutq*,struct ttyoutq_block*) ;
 int TTYOUTQ_REMOVE_HEAD (struct ttyoutq*) ;
 int memcpy (char*,scalar_t__,size_t) ;

size_t
ttyoutq_read(struct ttyoutq *to, void *buf, size_t len)
{
 char *cbuf = buf;

 while (len > 0) {
  struct ttyoutq_block *tob;
  size_t cbegin, cend, clen;


  if (to->to_begin == to->to_end)
   break;
  tob = to->to_firstblock;
  if (tob == ((void*)0))
   break;







  cbegin = to->to_begin;
  cend = MIN(MIN(to->to_end, to->to_begin + len),
      TTYOUTQ_DATASIZE);
  clen = cend - cbegin;


  memcpy(cbuf, tob->tob_data + cbegin, clen);
  cbuf += clen;
  len -= clen;

  if (cend == to->to_end) {

   to->to_begin = 0;
   to->to_end = 0;
  } else if (cend == TTYOUTQ_DATASIZE) {

   TTYOUTQ_REMOVE_HEAD(to);
   to->to_begin = 0;
   to->to_end -= TTYOUTQ_DATASIZE;
   TTYOUTQ_RECYCLE(to, tob);
  } else {

   to->to_begin += clen;
  }
 }

 return (cbuf - (char *)buf);
}
