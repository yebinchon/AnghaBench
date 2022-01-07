
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct cs4231_softc {int dummy; } ;
struct cs4231_channel {scalar_t__ speed; scalar_t__ dir; struct cs4231_softc* parent; } ;
typedef int speed_table ;
typedef int kobj_t ;




 int CS4231_LOCK (struct cs4231_softc*) ;
 int CS4231_UNLOCK (struct cs4231_softc*) ;
 int CS_CLOCK_DATA_FORMAT ;
 int CS_CLOCK_DATA_FORMAT_MASK ;
 int DPRINTF (char*) ;
 scalar_t__ PCMDIR_PLAY ;
 scalar_t__ abs (scalar_t__) ;
 int cs4231_chan_fs (struct cs4231_softc*,scalar_t__,int ) ;
 int cs4231_read (struct cs4231_softc*,int ) ;

__attribute__((used)) static u_int32_t
cs4231_chan_setspeed(kobj_t obj, void *data, u_int32_t speed)
{
 typedef struct {
  u_int32_t speed;
  u_int8_t bits;
 } speed_struct;

 const static speed_struct speed_table[] = {
  {5510, (0 << 1) | 128},
  {5510, (0 << 1) | 128},
  {6620, (7 << 1) | 128},
  {8000, (0 << 1) | 129},
  {9600, (7 << 1) | 129},
  {11025, (1 << 1) | 128},
  {16000, (1 << 1) | 129},
  {18900, (2 << 1) | 128},
  {22050, (3 << 1) | 128},
  {27420, (2 << 1) | 129},
  {32000, (3 << 1) | 129},
  {33075, (6 << 1) | 128},
  {33075, (4 << 1) | 128},
  {44100, (5 << 1) | 128},
  {48000, (6 << 1) | 129},
 };

 struct cs4231_softc *sc;
 struct cs4231_channel *ch;
 int i, n, sel;
 u_int8_t fs;

 ch = data;
 sc = ch->parent;
 CS4231_LOCK(sc);
 if (ch->speed == speed) {
  CS4231_UNLOCK(sc);
  return (speed);
 }
 n = sizeof(speed_table) / sizeof(speed_struct);

 for (i = 1, sel =0; i < n - 1; i++)
  if (abs(speed - speed_table[i].speed) <
      abs(speed - speed_table[sel].speed))
   sel = i;
 DPRINTF(("SPEED: %s : %dHz -> %dHz\n", ch->dir == PCMDIR_PLAY ?
     "playback" : "capture", speed, speed_table[sel].speed));
 speed = speed_table[sel].speed;

 fs = cs4231_read(sc, CS_CLOCK_DATA_FORMAT);
 fs &= ~CS_CLOCK_DATA_FORMAT_MASK;
 fs |= speed_table[sel].bits;
 cs4231_chan_fs(sc, ch->dir, fs);
 ch->speed = speed;
 CS4231_UNLOCK(sc);

 return (speed);
}
