
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct snd_mixer {int dummy; } ;
struct snapper_softc {int dummy; } ;
struct mtx {int dummy; } ;


 int SNAPPER_VOLUME ;

 struct snapper_softc* device_get_softc (int ) ;
 int mix_getdevinfo (struct snd_mixer*) ;
 struct mtx* mixer_get_lock (struct snd_mixer*) ;
 int mtx_lock (struct mtx*) ;
 int mtx_owned (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int* snapper_volume_table ;
 int snapper_write (struct snapper_softc*,int ,int*) ;

__attribute__((used)) static int
snapper_set(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
 struct snapper_softc *sc;
 struct mtx *mixer_lock;
 int locked;
 u_int l, r;
 u_char reg[6];

 sc = device_get_softc(mix_getdevinfo(m));
 mixer_lock = mixer_get_lock(m);
 locked = mtx_owned(mixer_lock);

 if (left > 100 || right > 100)
  return (0);

 l = (left == 0) ? 0 : snapper_volume_table[left - 1];
 r = (right == 0) ? 0 : snapper_volume_table[right - 1];

 switch (dev) {
 case 128:
  reg[0] = (l & 0xff0000) >> 16;
  reg[1] = (l & 0x00ff00) >> 8;
  reg[2] = l & 0x0000ff;
  reg[3] = (r & 0xff0000) >> 16;
  reg[4] = (r & 0x00ff00) >> 8;
  reg[5] = r & 0x0000ff;
  if (locked)
   mtx_unlock(mixer_lock);

  snapper_write(sc, SNAPPER_VOLUME, reg);

  if (locked)
   mtx_lock(mixer_lock);

  return (left | (right << 8));
 }

 return (0);
}
