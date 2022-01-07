
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcons_softc {int dummy; } ;
struct dcons_buf {int magic; int version; } ;


 int DCONS_HEADER_SIZE ;
 int DCONS_MAGIC ;
 int DCONS_VERSION ;
 int dcons_init_port (int,int,int,struct dcons_buf*,struct dcons_softc*) ;
 int htonl (int ) ;
 int ntohl (int ) ;

void
dcons_init(struct dcons_buf *buf, int size, struct dcons_softc *sc)
{
 int size0, size1, offset;

 offset = DCONS_HEADER_SIZE;
 size0 = (size - offset);
 size1 = size0 * 3 / 4;

 dcons_init_port(0, offset, size1, buf, sc);
 offset += size1;
 dcons_init_port(1, offset, size0 - size1, buf, sc);
 buf->version = htonl(DCONS_VERSION);
 buf->magic = ntohl(DCONS_MAGIC);
}
