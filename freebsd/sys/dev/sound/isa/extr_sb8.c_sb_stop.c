
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sb_info {int bd_flags; } ;
struct sb_chinfo {scalar_t__ dir; struct sb_info* parent; } ;


 int BD_F_DMARUN ;
 int BD_F_HISPEED ;
 int DSP_CMD_DMAEXIT_8 ;
 int DSP_CMD_SPKOFF ;
 scalar_t__ PCMDIR_PLAY ;
 int sb_cmd (struct sb_info*,int ) ;
 int sb_lock (struct sb_info*) ;
 int sb_reset_dsp (struct sb_info*) ;
 int sb_unlock (struct sb_info*) ;

__attribute__((used)) static int
sb_stop(struct sb_chinfo *ch)
{
 struct sb_info *sb = ch->parent;
     int play = (ch->dir == PCMDIR_PLAY)? 1 : 0;

 sb_lock(sb);
     if (sb->bd_flags & BD_F_HISPEED)
  sb_reset_dsp(sb);
 else {







  sb_reset_dsp(sb);
 }

 if (play)
  sb_cmd(sb, DSP_CMD_SPKOFF);
 sb_unlock(sb);
 sb->bd_flags &= ~BD_F_DMARUN;
 return 0;
}
