
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct cs4231_softc {int dummy; } ;
struct cs4231_channel {int format; scalar_t__ dir; struct cs4231_softc* parent; } ;
typedef int kobj_t ;



 int AFMT_CHANNEL (int) ;
 int AFMT_ENCODING (int) ;





 int CS4231_LOCK (struct cs4231_softc*) ;
 int CS4231_UNLOCK (struct cs4231_softc*) ;
 int CS_AFMT_A_LAW ;
 int CS_AFMT_IMA_ADPCM ;
 int CS_AFMT_MU_LAW ;
 int CS_AFMT_S16_BE ;
 int CS_AFMT_S16_LE ;
 int CS_AFMT_STEREO ;
 int CS_AFMT_U8 ;
 int CS_CLOCK_DATA_FORMAT ;
 int CS_CLOCK_DATA_FORMAT_MASK ;
 int DPRINTF (char*) ;
 scalar_t__ PCMDIR_PLAY ;
 int cs4231_chan_fs (struct cs4231_softc*,scalar_t__,int ) ;
 int cs4231_read (struct cs4231_softc*,int ) ;

__attribute__((used)) static int
cs4231_chan_setformat(kobj_t obj, void *data, u_int32_t format)
{
 struct cs4231_softc *sc;
 struct cs4231_channel *ch;
 u_int32_t encoding;
 u_int8_t fs, v;

 ch = data;
 sc = ch->parent;

 CS4231_LOCK(sc);
 if (ch->format == format) {
  CS4231_UNLOCK(sc);
  return (0);
 }

 encoding = AFMT_ENCODING(format);
 fs = 0;
 switch (encoding) {
 case 128:
  fs = CS_AFMT_U8;
  break;
 case 131:
  fs = CS_AFMT_MU_LAW;
  break;
 case 129:
  fs = CS_AFMT_S16_LE;
  break;
 case 133:
  fs = CS_AFMT_A_LAW;
  break;
 case 132:
  fs = CS_AFMT_IMA_ADPCM;
  break;
 case 130:
  fs = CS_AFMT_S16_BE;
  break;
 default:
  fs = CS_AFMT_U8;
  format = 128;
  break;
 }

 if (AFMT_CHANNEL(format) > 1)
  fs |= CS_AFMT_STEREO;

 DPRINTF(("FORMAT: %s : 0x%x\n", ch->dir == PCMDIR_PLAY ? "playback" :
     "capture", format));
 v = cs4231_read(sc, CS_CLOCK_DATA_FORMAT);
 v &= CS_CLOCK_DATA_FORMAT_MASK;
 fs |= v;
 cs4231_chan_fs(sc, ch->dir, fs);
 ch->format = format;
 CS4231_UNLOCK(sc);

 return (0);
}
