
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct davbus_softc {int mutex; int reg; int (* set_outputs ) (struct davbus_softc*,int ) ;int (* read_status ) (struct davbus_softc*,int ) ;} ;


 int BURGUNDY_ISA_SF0 ;
 int BURGUNDY_ISSAL_REG ;
 int BURGUNDY_ISSAR_REG ;
 int BURGUNDY_ISS_UNITY ;
 int BURGUNDY_MIX0_REG ;
 int BURGUNDY_MIX1_REG ;
 int BURGUNDY_MIX2_REG ;
 int BURGUNDY_MIX3_REG ;
 int BURGUNDY_MIX_ISA ;
 int BURGUNDY_MXS2L_REG ;
 int BURGUNDY_MXS2R_REG ;
 int BURGUNDY_MXS_UNITY ;
 int BURGUNDY_OS0_MIX2 ;
 int BURGUNDY_OS1_MIX2 ;
 int BURGUNDY_OSS0L_REG ;
 int BURGUNDY_OSS0R_REG ;
 int BURGUNDY_OSS1L_REG ;
 int BURGUNDY_OSS1R_REG ;
 int BURGUNDY_OSS_UNITY ;
 int BURGUNDY_OS_REG ;
 int BURGUNDY_SDIN_REG ;
 int DAVBUS_CODEC_STATUS ;
 int SOUND_MASK_VOLUME ;
 int burgundy_read_status (struct davbus_softc*,int ) ;
 int burgundy_set_outputs (struct davbus_softc*,int ) ;
 int burgundy_write_locked (struct davbus_softc*,int,int) ;
 int bus_read_4 (int ,int ) ;
 struct davbus_softc* mix_getdevinfo (struct snd_mixer*) ;
 int mix_setdevs (struct snd_mixer*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
burgundy_init(struct snd_mixer *m)
{
 struct davbus_softc *d;

 d = mix_getdevinfo(m);

 d->read_status = burgundy_read_status;
 d->set_outputs = burgundy_set_outputs;
 mtx_lock(&d->mutex);

 burgundy_write_locked(d, 0x16700, 0x40);

 burgundy_write_locked(d, BURGUNDY_MIX0_REG, 0);
 burgundy_write_locked(d, BURGUNDY_MIX1_REG, 0);
 burgundy_write_locked(d, BURGUNDY_MIX2_REG, BURGUNDY_MIX_ISA);
 burgundy_write_locked(d, BURGUNDY_MIX3_REG, 0);

 burgundy_write_locked(d, BURGUNDY_OS_REG, BURGUNDY_OS0_MIX2 |
     BURGUNDY_OS1_MIX2);

 burgundy_write_locked(d, BURGUNDY_SDIN_REG, BURGUNDY_ISA_SF0);


 burgundy_write_locked(d, BURGUNDY_MXS2L_REG, BURGUNDY_MXS_UNITY);
 burgundy_write_locked(d, BURGUNDY_MXS2R_REG, BURGUNDY_MXS_UNITY);
 burgundy_write_locked(d, BURGUNDY_OSS0L_REG, BURGUNDY_OSS_UNITY);
 burgundy_write_locked(d, BURGUNDY_OSS0R_REG, BURGUNDY_OSS_UNITY);
 burgundy_write_locked(d, BURGUNDY_OSS1L_REG, BURGUNDY_OSS_UNITY);
 burgundy_write_locked(d, BURGUNDY_OSS1R_REG, BURGUNDY_OSS_UNITY);
 burgundy_write_locked(d, BURGUNDY_ISSAL_REG, BURGUNDY_ISS_UNITY);
 burgundy_write_locked(d, BURGUNDY_ISSAR_REG, BURGUNDY_ISS_UNITY);

 burgundy_set_outputs(d, burgundy_read_status(d,
     bus_read_4(d->reg, DAVBUS_CODEC_STATUS)));

 mtx_unlock(&d->mutex);

 mix_setdevs(m, SOUND_MASK_VOLUME);

 return (0);
}
