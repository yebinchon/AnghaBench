
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct via_chinfo {int blksz; int buffer; } ;
typedef int kobj_t ;


 int SEGS_PER_CHAN ;
 int sndbuf_resize (int ,int ,int ) ;

__attribute__((used)) static u_int32_t
viachan_setblocksize(kobj_t obj, void *data, u_int32_t blocksize)
{
 struct via_chinfo *ch = data;

 ch->blksz = blocksize;
 sndbuf_resize(ch->buffer, SEGS_PER_CHAN, ch->blksz);

 return ch->blksz;
}
