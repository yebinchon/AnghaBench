
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct snd_mixer {int dummy; } ;
struct onyx_softc {int dummy; } ;
struct mtx {int dummy; } ;


 int PCM3052_REG_LEFT_ATTN ;
 int PCM3052_REG_RIGHT_ATTN ;

 struct onyx_softc* device_get_softc (int ) ;
 int mix_getdevinfo (struct snd_mixer*) ;
 struct mtx* mixer_get_lock (struct snd_mixer*) ;
 int mtx_lock (struct mtx*) ;
 int mtx_owned (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int onyx_write (struct onyx_softc*,int ,int ) ;

__attribute__((used)) static int
onyx_set(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
 struct onyx_softc *sc;
 struct mtx *mixer_lock;
 int locked;
 uint8_t l, r;

 sc = device_get_softc(mix_getdevinfo(m));
 mixer_lock = mixer_get_lock(m);
 locked = mtx_owned(mixer_lock);

 switch (dev) {
 case 128:







  if (left > 100 || right > 100)
   return (0);

  l = left + 128;
  r = right + 128;

  if (locked)
   mtx_unlock(mixer_lock);

  onyx_write(sc, PCM3052_REG_LEFT_ATTN, l);
  onyx_write(sc, PCM3052_REG_RIGHT_ATTN, r);

  if (locked)
   mtx_lock(mixer_lock);

  return (left | (right << 8));
 }

 return (0);
}
