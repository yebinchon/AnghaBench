
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct fm801_info {int rec_fmt; int play_fmt; } ;
struct fm801_chinfo {scalar_t__ dir; struct fm801_info* parent; } ;
typedef int kobj_t ;


 int AFMT_16BIT ;
 int AFMT_BIGENDIAN ;
 int AFMT_CHANNEL (int) ;
 int AFMT_SIGNED ;
 int DPRINT (char*,int,char*,char*,char*,char*) ;
 int FM_PLAY_16BIT ;
 int FM_PLAY_STEREO ;
 int FM_REC_STEREO ;
 scalar_t__ PCMDIR_PLAY ;
 scalar_t__ PCMDIR_REC ;

__attribute__((used)) static int
fm801ch_setformat(kobj_t obj, void *data, u_int32_t format)
{
 struct fm801_chinfo *ch = data;
 struct fm801_info *fm801 = ch->parent;

 DPRINT("fm801ch_setformat 0x%x : %s, %s, %s, %s\n", format,
  (AFMT_CHANNEL(format) > 1)?"stereo":"mono",
  (format & AFMT_16BIT) ? "16bit":"8bit",
  (format & AFMT_SIGNED)? "signed":"unsigned",
  (format & AFMT_BIGENDIAN)?"bigendiah":"littleendian" );

 if(ch->dir == PCMDIR_PLAY) {
  fm801->play_fmt =
      (AFMT_CHANNEL(format) > 1)? FM_PLAY_STEREO : 0;
  fm801->play_fmt |= (format & AFMT_16BIT) ? FM_PLAY_16BIT : 0;
  return 0;
 }

 if(ch->dir == PCMDIR_REC ) {
  fm801->rec_fmt = (AFMT_CHANNEL(format) > 1)? FM_REC_STEREO:0;
  fm801->rec_fmt |= (format & AFMT_16BIT) ? FM_PLAY_16BIT : 0;
  return 0;
 }

 return 0;
}
