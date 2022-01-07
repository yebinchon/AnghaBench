
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int pbuf; int rbuf; } ;
struct sc_chinfo {int fmt; scalar_t__ dir; int active; int wmark; int blksize; struct sc_info* parent; } ;
typedef int kobj_t ;


 int AFMT_16BIT ;
 int AFMT_CHANNEL (int) ;
 int NM_AUDIO_MUTE_BOTH ;
 int NM_AUDIO_MUTE_REG ;
 int NM_BUFFSIZE ;
 int NM_PBUFFER_CURRP ;
 int NM_PBUFFER_END ;
 int NM_PBUFFER_START ;
 int NM_PBUFFER_WMARK ;
 int NM_PLAYBACK_ENABLE_FLAG ;
 int NM_PLAYBACK_ENABLE_REG ;
 int NM_PLAYBACK_FREERUN ;
 int NM_RBUFFER_CURRP ;
 int NM_RBUFFER_END ;
 int NM_RBUFFER_START ;
 int NM_RBUFFER_WMARK ;
 int NM_RECORD_ENABLE_FLAG ;
 int NM_RECORD_ENABLE_REG ;
 int NM_RECORD_FREERUN ;
 scalar_t__ PCMDIR_PLAY ;
 int PCMTRIG_COMMON (int) ;
 int PCMTRIG_START ;
 int nm_wr (struct sc_info*,int ,int,int) ;

__attribute__((used)) static int
nmchan_trigger(kobj_t obj, void *data, int go)
{
 struct sc_chinfo *ch = data;
 struct sc_info *sc = ch->parent;
 int ssz;

 if (!PCMTRIG_COMMON(go))
  return 0;

 ssz = (ch->fmt & AFMT_16BIT)? 2 : 1;
 if (AFMT_CHANNEL(ch->fmt) > 1)
  ssz <<= 1;

 if (ch->dir == PCMDIR_PLAY) {
  if (go == PCMTRIG_START) {
   ch->active = 1;
   ch->wmark = ch->blksize;
   nm_wr(sc, NM_PBUFFER_START, sc->pbuf, 4);
   nm_wr(sc, NM_PBUFFER_END, sc->pbuf + NM_BUFFSIZE - ssz, 4);
   nm_wr(sc, NM_PBUFFER_CURRP, sc->pbuf, 4);
   nm_wr(sc, NM_PBUFFER_WMARK, sc->pbuf + ch->wmark, 4);
   nm_wr(sc, NM_PLAYBACK_ENABLE_REG, NM_PLAYBACK_FREERUN |
    NM_PLAYBACK_ENABLE_FLAG, 1);
   nm_wr(sc, NM_AUDIO_MUTE_REG, 0, 2);
  } else {
   ch->active = 0;
   nm_wr(sc, NM_PLAYBACK_ENABLE_REG, 0, 1);
   nm_wr(sc, NM_AUDIO_MUTE_REG, NM_AUDIO_MUTE_BOTH, 2);
  }
 } else {
  if (go == PCMTRIG_START) {
   ch->active = 1;
   ch->wmark = ch->blksize;
   nm_wr(sc, NM_RECORD_ENABLE_REG, NM_RECORD_FREERUN |
    NM_RECORD_ENABLE_FLAG, 1);
   nm_wr(sc, NM_RBUFFER_START, sc->rbuf, 4);
   nm_wr(sc, NM_RBUFFER_END, sc->rbuf + NM_BUFFSIZE, 4);
   nm_wr(sc, NM_RBUFFER_CURRP, sc->rbuf, 4);
   nm_wr(sc, NM_RBUFFER_WMARK, sc->rbuf + ch->wmark, 4);
  } else {
   ch->active = 0;
   nm_wr(sc, NM_RECORD_ENABLE_REG, 0, 1);
  }
 }
 return 0;
}
