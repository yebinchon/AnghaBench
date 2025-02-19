
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sb_info {int bd_flags; } ;
struct sb_chinfo {scalar_t__ dir; int blksz; int fmt; struct sb_info* parent; } ;


 int AFMT_CHANNEL (int ) ;
 int BD_F_DMARUN ;
 int BD_F_HISPEED ;
 int DSP_CMD_SPKON ;
 scalar_t__ PCMDIR_PLAY ;
 int sb_cmd (struct sb_info*,int) ;
 int sb_cmd2 (struct sb_info*,int,int) ;
 int sb_lock (struct sb_info*) ;
 int sb_setmixer (struct sb_info*,int,int) ;
 int sb_unlock (struct sb_info*) ;

__attribute__((used)) static int
sb_start(struct sb_chinfo *ch)
{
 struct sb_info *sb = ch->parent;
     int play = (ch->dir == PCMDIR_PLAY)? 1 : 0;
     int stereo = (AFMT_CHANNEL(ch->fmt) > 1)? 1 : 0;
 int l = ch->blksz;
 u_char i;

 l--;

 sb_lock(sb);
 if (play)
  sb_cmd(sb, DSP_CMD_SPKON);

 if (sb->bd_flags & BD_F_HISPEED)
  i = play? 0x90 : 0x98;
 else
  i = play? 0x1c : 0x2c;

 sb_setmixer(sb, 0x0e, stereo? 2 : 0);
 sb_cmd2(sb, 0x48, l);
        sb_cmd(sb, i);

 sb->bd_flags |= BD_F_DMARUN;
 sb_unlock(sb);
 return 0;
}
