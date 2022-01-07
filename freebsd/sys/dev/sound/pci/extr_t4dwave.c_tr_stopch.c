
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr_info {int dummy; } ;
struct tr_chinfo {int index; struct tr_info* parent; } ;


 int TR_REG_STOPA ;
 int TR_REG_STOPB ;
 int tr_wr (struct tr_info*,int ,int,int) ;

__attribute__((used)) static void
tr_stopch(struct tr_chinfo *ch)
{
 struct tr_info *tr = ch->parent;
 int bank, chan;

 bank = (ch->index & 0x20) ? 1 : 0;
 chan = ch->index & 0x1f;
 tr_wr(tr, bank? TR_REG_STOPB : TR_REG_STOPA, 1 << chan, 4);
}
