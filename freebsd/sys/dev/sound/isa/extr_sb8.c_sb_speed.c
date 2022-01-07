
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sb_info {int bd_id; int bd_flags; } ;
struct sb_chinfo {scalar_t__ dir; int spd; int fmt; struct sb_info* parent; } ;


 int AFMT_CHANNEL (int ) ;
 int BD_F_HISPEED ;
 scalar_t__ PCMDIR_PLAY ;
 int sb_cmd1 (struct sb_info*,int,int) ;
 int sb_lock (struct sb_info*) ;
 int sb_unlock (struct sb_info*) ;

__attribute__((used)) static int
sb_speed(struct sb_chinfo *ch)
{
 struct sb_info *sb = ch->parent;
     int play = (ch->dir == PCMDIR_PLAY)? 1 : 0;
 int stereo = (AFMT_CHANNEL(ch->fmt) > 1)? 1 : 0;
 int speed, tmp, thresh, max;
 u_char tconst;

 if (sb->bd_id >= 0x300) {
  thresh = stereo? 11025 : 23000;
  max = stereo? 22050 : 44100;
 } else if (sb->bd_id > 0x200) {
  thresh = play? 23000 : 13000;
  max = play? 44100 : 15000;
 } else {
  thresh = 999999;
  max = play? 23000 : 13000;
 }

 speed = ch->spd;
 if (speed > max)
  speed = max;

 sb_lock(sb);
 sb->bd_flags &= ~BD_F_HISPEED;
 if (speed > thresh)
  sb->bd_flags |= BD_F_HISPEED;

 tmp = 65536 - (256000000 / (speed << stereo));
 tconst = tmp >> 8;

 sb_cmd1(sb, 0x40, tconst);

 speed = (256000000 / (65536 - tmp)) >> stereo;

 ch->spd = speed;
 sb_unlock(sb);
 return speed;
}
