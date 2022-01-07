
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; char* buf; int gen; int pos; int * ptr; } ;
struct TYPE_3__ {int size; char* buf; int gen; int pos; int * ptr; } ;
struct dcons_softc {TYPE_2__ i; TYPE_1__ o; int brk_state; } ;
struct dcons_buf {scalar_t__ version; int magic; int * iptr; int * optr; int * ioffset; int * ooffset; int * isize; int * osize; } ;


 int DCONS_GEN_SHIFT ;
 int DCONS_HEADER_SIZE ;
 int DCONS_MAGIC ;
 int DCONS_NPORT ;
 int DCONS_POS_MASK ;
 int DCONS_VERSION ;
 int STATE0 ;
 scalar_t__ htonl (int ) ;
 int ntohl (int ) ;

int
dcons_load_buffer(struct dcons_buf *buf, int size, struct dcons_softc *sc)
{
 int port, s;
 struct dcons_softc *dc;

 if (buf->version != htonl(DCONS_VERSION))
  return (-1);

 s = DCONS_HEADER_SIZE;
 for (port = 0; port < DCONS_NPORT; port ++) {
  dc = &sc[port];
  dc->o.size = ntohl(buf->osize[port]);
  dc->i.size = ntohl(buf->isize[port]);
  dc->o.buf = (char *)buf + ntohl(buf->ooffset[port]);
  dc->i.buf = (char *)buf + ntohl(buf->ioffset[port]);
  dc->o.gen = ntohl(buf->optr[port]) >> DCONS_GEN_SHIFT;
  dc->i.gen = ntohl(buf->iptr[port]) >> DCONS_GEN_SHIFT;
  dc->o.pos = ntohl(buf->optr[port]) & DCONS_POS_MASK;
  dc->i.pos = ntohl(buf->iptr[port]) & DCONS_POS_MASK;
  dc->o.ptr = &buf->optr[port];
  dc->i.ptr = &buf->iptr[port];
  dc->brk_state = STATE0;

  s += dc->o.size + dc->i.size;
 }


 if (s > size)
  return (-1);

 buf->magic = ntohl(DCONS_MAGIC);

 return (0);
}
