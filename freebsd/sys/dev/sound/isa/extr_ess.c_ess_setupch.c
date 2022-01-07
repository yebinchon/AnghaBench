
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct ess_info {scalar_t__ newspeed; } ;


 int AFMT_16BIT ;
 int AFMT_CHANNEL (int) ;
 int AFMT_U16_LE ;
 int AFMT_U8 ;
 int KASSERT (int,char*) ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int ess_calcfilter (int) ;
 int ess_calcspeed8 (int*) ;
 int ess_calcspeed9 (int*) ;
 int ess_read (struct ess_info*,int) ;
 int ess_setmixer (struct ess_info*,int,int) ;
 int ess_write (struct ess_info*,int,int) ;

__attribute__((used)) static int
ess_setupch(struct ess_info *sc, int ch, int dir, int spd, u_int32_t fmt, int len)
{
 int play = (dir == PCMDIR_PLAY)? 1 : 0;
 int b16 = (fmt & AFMT_16BIT)? 1 : 0;
 int stereo = (AFMT_CHANNEL(fmt) > 1)? 1 : 0;
 int unsign = (fmt == AFMT_U8 || fmt == AFMT_U16_LE)? 1 : 0;
 u_int8_t spdval, fmtval;


 spdval = (sc->newspeed)? ess_calcspeed9(&spd) : ess_calcspeed8(&spd);
 len = -len;

 if (ch == 1) {
  KASSERT((dir == PCMDIR_PLAY) || (dir == PCMDIR_REC), ("ess_setupch: dir1 bad"));

  ess_write(sc, 0xa4, len & 0x00ff);

  ess_write(sc, 0xa5, (len & 0xff00) >> 8);

  ess_write(sc, 0xb8, 0x04 | (play? 0x00 : 0x0a));

  ess_write(sc, 0xa8, (ess_read(sc, 0xa8) & ~0x03) | (stereo? 0x01 : 0x02));

  ess_write(sc, 0xb9, 0x02);

         ess_write(sc, 0xa1, spdval);

  ess_write(sc, 0xa2, ess_calcfilter(spd));

  if (play)
   ess_write(sc, 0xb6, unsign? 0x80 : 0x00);

  ess_write(sc, 0xb7, 0x51 | (unsign? 0x00 : 0x20));

  ess_write(sc, 0xb7, 0x90 | (unsign? 0x00 : 0x20) |
        (b16? 0x04 : 0x00) |
        (stereo? 0x08 : 0x40));

  ess_write(sc, 0xb1, (ess_read(sc, 0xb1) & 0x0f) | 0x50);

  ess_write(sc, 0xb2, (ess_read(sc, 0xb2) & 0x0f) | 0x50);
 } else if (ch == 2) {
  KASSERT(dir == PCMDIR_PLAY, ("ess_setupch: dir2 bad"));

  ess_setmixer(sc, 0x74, len & 0x00ff);

  ess_setmixer(sc, 0x76, (len & 0xff00) >> 8);

  ess_setmixer(sc, 0x78, 0x90);
  fmtval = b16 | (stereo << 1) | (unsign << 2);

  ess_setmixer(sc, 0x7a, 0x40 | fmtval);
  if (sc->newspeed) {

   ess_setmixer(sc, 0x70, spdval);

   ess_setmixer(sc, 0x72, ess_calcfilter(spd));
  }
 }

 return 0;
}
