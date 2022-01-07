
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tr_info {int lock; } ;
struct tr_chinfo {int index; struct tr_info* parent; } ;


 int TR_REG_INTENA ;
 int TR_REG_INTENB ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int tr_clrint (struct tr_chinfo*) ;
 int tr_rd (struct tr_info*,int,int) ;
 int tr_wr (struct tr_info*,int,int,int) ;

__attribute__((used)) static void
tr_enaint(struct tr_chinfo *ch, int enable)
{
 struct tr_info *tr = ch->parent;
        u_int32_t i, reg;
 int bank, chan;

 snd_mtxlock(tr->lock);
 bank = (ch->index & 0x20) ? 1 : 0;
 chan = ch->index & 0x1f;
 reg = bank? TR_REG_INTENB : TR_REG_INTENA;

 i = tr_rd(tr, reg, 4);
 i &= ~(1 << chan);
 i |= (enable? 1 : 0) << chan;

 tr_clrint(ch);
 tr_wr(tr, reg, i, 4);
 snd_mtxunlock(tr->lock);
}
