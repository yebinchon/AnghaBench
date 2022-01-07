
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct sc_chinfo {int size; int blk; int unit; scalar_t__ dir; int buffer; } ;
typedef int kobj_t ;
struct TYPE_2__ {int dev; } ;


 int ENVY24_PLAY_BUFUNIT ;
 int ENVY24_REC_BUFUNIT ;
 scalar_t__ PCMDIR_PLAY ;
 scalar_t__ abs (int) ;
 int device_printf (int ,char*,int) ;
 TYPE_1__* sc ;
 int sndbuf_resize (int ,unsigned int,unsigned int) ;

__attribute__((used)) static u_int32_t
envy24chan_setblocksize(kobj_t obj, void *data, u_int32_t blocksize)
{
 struct sc_chinfo *ch = data;

 u_int32_t size, prev;
        unsigned int bcnt, bsize;




 prev = 0x7fffffff;

 for (size = ch->size / 2; size > 0; size /= 2) {
  if (abs(size - blocksize) < abs(prev - blocksize))
   prev = size;
  else
   break;
 }

 ch->blk = prev / ch->unit;
 if (ch->dir == PCMDIR_PLAY)
  ch->blk *= ENVY24_PLAY_BUFUNIT / 4;
 else
  ch->blk *= ENVY24_REC_BUFUNIT / 4;


        if (ch->dir == PCMDIR_PLAY)
                bsize = ch->blk * 4 / ENVY24_PLAY_BUFUNIT;
        else
                bsize = ch->blk * 4 / ENVY24_REC_BUFUNIT;
        bsize *= ch->unit;
        bcnt = ch->size / bsize;
        sndbuf_resize(ch->buffer, bcnt, bsize);





 return prev;
}
