
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct davbus_softc {int mutex; } ;


 int DPRINTF (char*) ;
 int SCREAMER_CODEC_ADDR2 ;
 int SCREAMER_CODEC_ADDR4 ;

 struct davbus_softc* mix_getdevinfo (struct snd_mixer*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int screamer_write_locked (struct davbus_softc*,int ,int) ;

__attribute__((used)) static int
screamer_set(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
 struct davbus_softc *d;
 int lval, rval;

 lval = ((100 - left) * 15 / 100) & 0xf;
 rval = ((100 - right) * 15 / 100) & 0xf;
 DPRINTF(("volume %d %d\n", lval, rval));

 d = mix_getdevinfo(m);

 switch (dev) {
 case 128:
  mtx_lock(&d->mutex);
  screamer_write_locked(d, SCREAMER_CODEC_ADDR2, (lval << 6) |
      rval);
  screamer_write_locked(d, SCREAMER_CODEC_ADDR4, (lval << 6) |
      rval);
  mtx_unlock(&d->mutex);

  return (left | (right << 8));
 }

 return (0);
}
