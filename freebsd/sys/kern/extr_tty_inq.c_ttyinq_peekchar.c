
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyinq_block {char* tib_data; } ;
struct ttyinq {int ti_linestart; int ti_end; struct ttyinq_block* ti_lastblock; } ;


 int GETBIT (struct ttyinq_block*,unsigned int) ;
 int MPASS (int) ;
 int TTYINQ_DATASIZE ;

int
ttyinq_peekchar(struct ttyinq *ti, char *c, int *quote)
{
 unsigned int boff;
 struct ttyinq_block *tib = ti->ti_lastblock;

 if (ti->ti_linestart == ti->ti_end)
  return (-1);

 MPASS(ti->ti_end > 0);
 boff = (ti->ti_end - 1) % TTYINQ_DATASIZE;

 *c = tib->tib_data[boff];
 *quote = GETBIT(tib, boff);

 return (0);
}
