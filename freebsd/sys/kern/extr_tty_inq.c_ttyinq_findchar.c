
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyinq_block {char* tib_data; } ;
struct ttyinq {unsigned int ti_begin; size_t ti_linestart; struct ttyinq_block* ti_firstblock; } ;


 int GETBIT (struct ttyinq_block*,unsigned int) ;
 unsigned int MIN (unsigned int,size_t) ;
 int MPASS (int) ;
 unsigned int TTYINQ_DATASIZE ;
 scalar_t__ strchr (char const*,char) ;

size_t
ttyinq_findchar(struct ttyinq *ti, const char *breakc, size_t maxlen,
    char *lastc)
{
 struct ttyinq_block *tib = ti->ti_firstblock;
 unsigned int boff = ti->ti_begin;
 unsigned int bend = MIN(MIN(TTYINQ_DATASIZE, ti->ti_linestart),
     ti->ti_begin + maxlen);

 MPASS(maxlen > 0);

 if (tib == ((void*)0))
  return (0);

 while (boff < bend) {
  if (strchr(breakc, tib->tib_data[boff]) && !GETBIT(tib, boff)) {
   *lastc = tib->tib_data[boff];
   return (boff - ti->ti_begin + 1);
  }
  boff++;
 }


 return (bend - ti->ti_begin);
}
