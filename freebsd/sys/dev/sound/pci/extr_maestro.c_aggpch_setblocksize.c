
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct agg_chinfo {int speed; int stereo; int qs16; int blklen; int buflen; int buffer; TYPE_1__* parent; } ;
typedef int kobj_t ;
struct TYPE_2__ {int bufsz; } ;


 int RANGE (int,int,int) ;
 int sndbuf_getblkcnt (int ) ;
 int sndbuf_getblksz (int ) ;
 int sndbuf_getsize (int ) ;
 int sndbuf_resize (int ,int,int) ;
 int sndbuf_setblkcnt (int ,int) ;
 int sndbuf_setblksz (int ,int) ;

__attribute__((used)) static u_int32_t
aggpch_setblocksize(kobj_t obj, void *data, u_int32_t blocksize)
{
 struct agg_chinfo *ch = data;
 int blkcnt;


 blkcnt = (ch->speed << (ch->stereo + ch->qs16)) / (50 * blocksize);
 RANGE(blkcnt, 2, ch->parent->bufsz / blocksize);

 if (sndbuf_getsize(ch->buffer) != blkcnt * blocksize) {
  sndbuf_resize(ch->buffer, blkcnt, blocksize);
  blkcnt = sndbuf_getblkcnt(ch->buffer);
  blocksize = sndbuf_getblksz(ch->buffer);
 } else {
  sndbuf_setblkcnt(ch->buffer, blkcnt);
  sndbuf_setblksz(ch->buffer, blocksize);
 }

 ch->blklen = blocksize / 2;
 ch->buflen = blkcnt * blocksize / 2;
 return blocksize;
}
