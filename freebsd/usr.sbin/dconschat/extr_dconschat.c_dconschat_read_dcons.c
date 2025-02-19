
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct dcons_state {TYPE_1__* port; } ;
struct dcons_ch {int gen; int pos; int size; scalar_t__ buf; } ;
struct TYPE_2__ {int optr; struct dcons_ch o; } ;


 int DCONS_GEN_MASK ;
 int DCONS_GEN_SHIFT ;
 int DCONS_NEXT_GEN (int) ;
 int DCONS_POS_MASK ;
 scalar_t__ ETIMEDOUT ;
 int MAX_XFER ;
 int RETRY ;
 int dconschat_ready (struct dcons_state*,int ,char*) ;
 int dread (struct dcons_state*,char*,int,scalar_t__) ;
 scalar_t__ errno ;
 int fflush (int ) ;
 int printf (char*,int) ;
 int stdout ;
 int verbose ;
 int warnx (char*,int,int) ;

__attribute__((used)) static int
dconschat_read_dcons(struct dcons_state *dc, int port, char *buf, int len)
{
 struct dcons_ch *ch;
 u_int32_t ptr, pos, gen, next_gen;
 int rlen, dlen, lost;
 int retry = RETRY;

 ch = &dc->port[port].o;
 ptr = dc->port[port].optr;
 gen = ptr >> DCONS_GEN_SHIFT;
 pos = ptr & DCONS_POS_MASK;
 if (gen == ch->gen && pos == ch->pos)
  return (-1);

 next_gen = DCONS_NEXT_GEN(ch->gen);

 if (gen == ch->gen) {
  if (pos > ch->pos)
   goto ok;
  lost = ch->size * DCONS_GEN_MASK - ch->pos;
  ch->pos = 0;
 } else if (gen == next_gen) {
  if (pos <= ch->pos)
   goto ok;
  lost = pos - ch->pos;
  ch->pos = pos;
 } else {
  lost = gen - ch->gen;
  if (lost < 0)
   lost += DCONS_GEN_MASK;
  if (verbose)
   printf("[genskip %d]", lost);
  lost = lost * ch->size - ch->pos;
  ch->pos = 0;
  ch->gen = gen;
 }


 if (verbose)
  printf("[lost %d]", lost);
ok:
 if (gen == ch->gen)
  rlen = pos - ch->pos;
 else
  rlen = ch->size - ch->pos;

 if (rlen > MAX_XFER)
  rlen = MAX_XFER;
 if (rlen > len)
  rlen = len;


 if (verbose == 1)
  printf("[%d]", rlen); fflush(stdout);


again:
 dlen = dread(dc, buf, rlen, ch->buf + ch->pos);
 if (dlen < 0) {
  if (errno == ETIMEDOUT)
   if (retry -- > 0)
    goto again;
  dconschat_ready(dc, 0, "read buffer failed");
  return(-1);
 }
 if (dlen != rlen)
  warnx("dlen(%d) != rlen(%d)\n", dlen, rlen);
 ch->pos += dlen;
 if (ch->pos >= ch->size) {
  ch->gen = next_gen;
  ch->pos = 0;
  if (verbose)
   printf("read_dcons: gen=%d", ch->gen);
 }
 return (dlen);
}
