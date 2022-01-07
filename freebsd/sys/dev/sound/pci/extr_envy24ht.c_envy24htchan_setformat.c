
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct sc_info {int dev; int lock; } ;
struct sc_chinfo {scalar_t__ dir; scalar_t__ format; int unit; int blk; int size; int buffer; int emldma; struct sc_info* parent; } ;
struct envy24ht_emldma {scalar_t__ format; int unit; int emldma; } ;
typedef int kobj_t ;


 int ENVY24HT_PLAY_BUFUNIT ;
 int ENVY24HT_REC_BUFUNIT ;
 int ENVY24HT_SAMPLE_NUM ;
 scalar_t__ PCMDIR_PLAY ;
 int bcnt ;
 int bsize ;
 int device_printf (int ,char*,scalar_t__) ;
 struct envy24ht_emldma* envy24ht_pemltab ;
 struct envy24ht_emldma* envy24ht_remltab ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int sndbuf_resize (int ,int,int) ;

__attribute__((used)) static int
envy24htchan_setformat(kobj_t obj, void *data, u_int32_t format)
{
 struct sc_chinfo *ch = data;
 struct sc_info *sc = ch->parent;
 struct envy24ht_emldma *emltab;

 int i;




 snd_mtxlock(sc->lock);

 if (ch->dir == PCMDIR_PLAY)
  emltab = envy24ht_pemltab;
 else
  emltab = envy24ht_remltab;
 if (emltab == ((void*)0)) {
  snd_mtxunlock(sc->lock);
  return -1;
 }
 for (i = 0; emltab[i].format != 0; i++)
  if (emltab[i].format == format)
   break;
 if (emltab[i].format == 0) {
  snd_mtxunlock(sc->lock);
  return -1;
 }


 ch->format = format;
 ch->emldma = emltab[i].emldma;
 if (ch->unit > emltab[i].unit)
  ch->blk *= ch->unit / emltab[i].unit;
 else
  ch->blk /= emltab[i].unit / ch->unit;
 ch->unit = emltab[i].unit;


 ch->size = ch->unit * ENVY24HT_SAMPLE_NUM;
 snd_mtxunlock(sc->lock);




 return 0;
}
