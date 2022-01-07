
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dcons_state {scalar_t__ paddr; int flags; TYPE_1__* port; } ;
struct dcons_ch {int size; scalar_t__ buf; int gen; int pos; } ;
struct dcons_buf {scalar_t__ magic; int * ioffset; int * ooffset; int * iptr; int * isize; int * optr; int * osize; int version; } ;
typedef scalar_t__ off_t ;
typedef int ebuf ;
struct TYPE_2__ {struct dcons_ch i; struct dcons_ch o; } ;


 int DCONS_GEN_SHIFT ;
 int DCONS_HEADER_SIZE ;
 int DCONS_MAGIC ;
 int DCONS_NPORT ;
 int DCONS_POS_MASK ;
 int DCONS_VERSION ;
 int F_REPLAY ;
 int F_USE_CROM ;
 scalar_t__ IS_CONSOLE (TYPE_1__*) ;
 scalar_t__ dconschat_get_crom (struct dcons_state*) ;
 int dconschat_ready (struct dcons_state*,int,char*) ;
 scalar_t__ dread (struct dcons_state*,struct dcons_buf*,int ,scalar_t__) ;
 scalar_t__ htonl (int ) ;
 int ntohl (int ) ;
 int printf (char*,int,...) ;
 int snprintf (char*,int,char*,char*,...) ;
 scalar_t__ verbose ;

__attribute__((used)) static int
dconschat_fetch_header(struct dcons_state *dc)
{
 char ebuf[64];
 struct dcons_buf dbuf;
 int j;
 if (dread(dc, &dbuf, DCONS_HEADER_SIZE, dc->paddr) < 0) {
  dconschat_ready(dc, 0, "read header failed");
  return (-1);
 }
 if (dbuf.magic != htonl(DCONS_MAGIC)) {
  if ((dc->flags & F_USE_CROM) !=0)
   dc->paddr = 0;
  snprintf(ebuf, sizeof(ebuf), "wrong magic 0x%08x", dbuf.magic);
  dconschat_ready(dc, 0, ebuf);
  return (-1);
 }
 if (ntohl(dbuf.version) != DCONS_VERSION) {
  snprintf(ebuf, sizeof(ebuf),

      "wrong version %ld,%d",



      ntohl(dbuf.version), DCONS_VERSION);

  dconschat_ready(dc, 0, ebuf);
  return (-1);
 }

 for (j = 0; j < DCONS_NPORT; j++) {
  struct dcons_ch *o, *i;
  off_t newbuf;
  int new = 0;

  o = &dc->port[j].o;
  newbuf = dc->paddr + ntohl(dbuf.ooffset[j]);
  o->size = ntohl(dbuf.osize[j]);

  if (newbuf != o->buf) {

   new = 1;
   o->gen = ntohl(dbuf.optr[j]) >> DCONS_GEN_SHIFT;
   o->pos = ntohl(dbuf.optr[j]) & DCONS_POS_MASK;
   o->buf = newbuf;
  }

  i = &dc->port[j].i;
  i->size = ntohl(dbuf.isize[j]);
  i->gen = ntohl(dbuf.iptr[j]) >> DCONS_GEN_SHIFT;
  i->pos = ntohl(dbuf.iptr[j]) & DCONS_POS_MASK;
  i->buf = dc->paddr + ntohl(dbuf.ioffset[j]);

  if (verbose) {
   printf("port %d   size offset   gen   pos\n", j);

   printf("output: %5d %6ld %5d %5d\n"
    "input : %5d %6ld %5d %5d\n",




   o->size, ntohl(dbuf.ooffset[j]), o->gen, o->pos,
   i->size, ntohl(dbuf.ioffset[j]), i->gen, i->pos);
  }

  if (IS_CONSOLE(&dc->port[j]) && new &&
      (dc->flags & F_REPLAY) !=0) {
   if (o->gen > 0)
    o->gen --;
   else
    o->pos = 0;
  }
 }
 dconschat_ready(dc, 1, ((void*)0));
 return(0);
}
