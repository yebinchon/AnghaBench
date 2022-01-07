
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct davbus_softc {int mutex; int reg; int (* set_outputs ) (struct davbus_softc*,int ) ;int (* read_status ) (struct davbus_softc*,int ) ;} ;


 int DAVBUS_CODEC_STATUS ;
 int SCREAMER_CODEC_ADDR0 ;
 int SCREAMER_CODEC_ADDR2 ;
 int SCREAMER_CODEC_ADDR4 ;
 int SCREAMER_CODEC_ADDR5 ;
 int SCREAMER_CODEC_ADDR6 ;
 int SCREAMER_DEFAULT_CD_GAIN ;
 int SCREAMER_INPUT_CD ;
 int SOUND_MASK_VOLUME ;
 int bus_read_4 (int ,int ) ;
 struct davbus_softc* mix_getdevinfo (struct snd_mixer*) ;
 int mix_setdevs (struct snd_mixer*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int screamer_read_status (struct davbus_softc*,int ) ;
 int screamer_set_outputs (struct davbus_softc*,int ) ;
 int screamer_write_locked (struct davbus_softc*,int ,int) ;

__attribute__((used)) static int
screamer_init(struct snd_mixer *m)
{
 struct davbus_softc *d;

 d = mix_getdevinfo(m);

 d->read_status = screamer_read_status;
 d->set_outputs = screamer_set_outputs;

 mtx_lock(&d->mutex);

 screamer_write_locked(d, SCREAMER_CODEC_ADDR0, SCREAMER_INPUT_CD |
     SCREAMER_DEFAULT_CD_GAIN);

 screamer_set_outputs(d, screamer_read_status(d,
     bus_read_4(d->reg, DAVBUS_CODEC_STATUS)));

 screamer_write_locked(d, SCREAMER_CODEC_ADDR2, 0);
 screamer_write_locked(d, SCREAMER_CODEC_ADDR4, 0);
 screamer_write_locked(d, SCREAMER_CODEC_ADDR5, 0);
 screamer_write_locked(d, SCREAMER_CODEC_ADDR6, 0);

 mtx_unlock(&d->mutex);

 mix_setdevs(m, SOUND_MASK_VOLUME);

 return (0);
}
