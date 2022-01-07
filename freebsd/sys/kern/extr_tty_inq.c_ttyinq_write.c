
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyinq_block {scalar_t__ tib_data; struct ttyinq_block* tib_next; } ;
struct ttyinq {unsigned int ti_end; scalar_t__ ti_begin; struct ttyinq_block* ti_lastblock; struct ttyinq_block* ti_firstblock; } ;


 size_t MIN (size_t,unsigned int) ;
 int MPASS (int) ;
 unsigned int TTYINQ_DATASIZE ;
 int memcpy (scalar_t__,char const*,size_t) ;
 int ttyinq_set_quotes (struct ttyinq_block*,unsigned int,size_t,int) ;

size_t
ttyinq_write(struct ttyinq *ti, const void *buf, size_t nbytes, int quote)
{
 const char *cbuf = buf;
 struct ttyinq_block *tib;
 unsigned int boff;
 size_t l;

 while (nbytes > 0) {
  boff = ti->ti_end % TTYINQ_DATASIZE;

  if (ti->ti_end == 0) {

   MPASS(ti->ti_begin == 0);
   tib = ti->ti_firstblock;
   if (tib == ((void*)0)) {

    break;
   }
   ti->ti_lastblock = tib;
  } else if (boff == 0) {

   tib = ti->ti_lastblock->tib_next;
   if (tib == ((void*)0)) {

    break;
   }
   ti->ti_lastblock = tib;
  } else {
   tib = ti->ti_lastblock;
  }


  l = MIN(nbytes, TTYINQ_DATASIZE - boff);
  MPASS(l > 0);
  memcpy(tib->tib_data + boff, cbuf, l);


  ttyinq_set_quotes(tib, boff, l, quote);

  cbuf += l;
  nbytes -= l;
  ti->ti_end += l;
 }

 return (cbuf - (const char *)buf);
}
