
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ess_info {int dummy; } ;
struct ess_chinfo {scalar_t__ dir; int stopping; int hwch; struct ess_info* parent; } ;


 int DSP_CMD_SPKOFF ;
 scalar_t__ PCMDIR_PLAY ;
 int ess_cmd (struct ess_info*,int ) ;
 int ess_getmixer (struct ess_info*,int) ;
 int ess_lock (struct ess_info*) ;
 int ess_read (struct ess_info*,int) ;
 int ess_setmixer (struct ess_info*,int,int) ;
 int ess_unlock (struct ess_info*) ;
 int ess_write (struct ess_info*,int,int) ;

__attribute__((used)) static int
ess_stop(struct ess_chinfo *ch)
{
 struct ess_info *sc = ch->parent;
     int play = (ch->dir == PCMDIR_PLAY)? 1 : 0;

 ess_lock(sc);
 ch->stopping = 1;
 if (ch->hwch == 1)
  ess_write(sc, 0xb8, ess_read(sc, 0xb8) & ~0x04);
 else
  ess_setmixer(sc, 0x78, ess_getmixer(sc, 0x78) & ~0x10);
 if (play)
  ess_cmd(sc, DSP_CMD_SPKOFF);
 ess_unlock(sc);
 return 0;
}
