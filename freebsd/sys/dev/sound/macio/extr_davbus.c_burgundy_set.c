
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct davbus_softc {int mutex; } ;


 int BURGUNDY_OL13_REG ;
 int BURGUNDY_OL14_REG ;
 int BURGUNDY_OL15_REG ;
 int BURGUNDY_OL16_REG ;
 int BURGUNDY_OL17_REG ;
 int DPRINTF (char*) ;

 int burgundy_write_locked (struct davbus_softc*,int ,int) ;
 struct davbus_softc* mix_getdevinfo (struct snd_mixer*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
burgundy_set(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
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

  burgundy_write_locked(d, BURGUNDY_OL13_REG, lval);
  burgundy_write_locked(d, BURGUNDY_OL14_REG, (rval << 4) | lval);
  burgundy_write_locked(d, BURGUNDY_OL15_REG, (rval << 4) | lval);
  burgundy_write_locked(d, BURGUNDY_OL16_REG, (rval << 4) | lval);
  burgundy_write_locked(d, BURGUNDY_OL17_REG, lval);

  mtx_unlock(&d->mutex);

  return (left | (right << 8));
 }

 return (0);
}
