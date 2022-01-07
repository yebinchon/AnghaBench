
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr_info {int dummy; } ;
struct tr_chinfo {int index; struct tr_info* parent; } ;


 int TR_CIR_MASK ;
 int TR_REG_CIR ;
 int tr_rd (struct tr_info*,int ,int) ;
 int tr_wr (struct tr_info*,int ,int,int) ;

__attribute__((used)) static void
tr_selch(struct tr_chinfo *ch)
{
 struct tr_info *tr = ch->parent;
 int i;

 i = tr_rd(tr, TR_REG_CIR, 4);
 i &= ~TR_CIR_MASK;
 i |= ch->index & 0x3f;
 tr_wr(tr, TR_REG_CIR, i, 4);
}
