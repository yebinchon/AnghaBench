
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tr_info {int type; int lock; } ;
struct tr_chinfo {int gvsel; int fmc; int fms; int ctrl; int pan; int rvol; int cvol; int vol; int ec; int alpha; int delta; int lba; int cso; int eso; struct tr_info* parent; } ;


 int ALI_MAXADDR ;




 int TR_CHN_REGS ;
 int TR_MAXADDR ;
 scalar_t__ TR_REG_CHNBASE ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int tr_selch (struct tr_chinfo*) ;
 int tr_wr (struct tr_info*,scalar_t__,int,int) ;

__attribute__((used)) static void
tr_wrch(struct tr_chinfo *ch)
{
 struct tr_info *tr = ch->parent;
 u_int32_t cr[TR_CHN_REGS], i;

 ch->gvsel &= 0x00000001;
 ch->fmc &= 0x00000003;
 ch->fms &= 0x0000000f;
 ch->ctrl &= 0x0000000f;
 ch->pan &= 0x0000007f;
 ch->rvol &= 0x0000007f;
 ch->cvol &= 0x0000007f;
 ch->vol &= 0x000000ff;
 ch->ec &= 0x00000fff;
 ch->alpha &= 0x00000fff;
 ch->delta &= 0x0000ffff;
 if (tr->type == 131)
  ch->lba &= ALI_MAXADDR;
 else
  ch->lba &= TR_MAXADDR;

 cr[1]=ch->lba;
 cr[3]=(ch->fmc<<14) | (ch->rvol<<7) | (ch->cvol);
 cr[4]=(ch->gvsel<<31) | (ch->pan<<24) | (ch->vol<<16) | (ch->ctrl<<12) | (ch->ec);

 switch (tr->type) {
 case 130:
 case 131:
 case 129:
  ch->cso &= 0x0000ffff;
  ch->eso &= 0x0000ffff;
  cr[0]=(ch->cso<<16) | (ch->alpha<<4) | (ch->fms);
  cr[2]=(ch->eso<<16) | (ch->delta);
  break;
 case 128:
  ch->cso &= 0x00ffffff;
  ch->eso &= 0x00ffffff;
  cr[0]=((ch->delta & 0xff)<<24) | (ch->cso);
  cr[2]=((ch->delta>>8)<<24) | (ch->eso);
  cr[3]|=(ch->alpha<<20) | (ch->fms<<16) | (ch->fmc<<14);
  break;
 }
 snd_mtxlock(tr->lock);
 tr_selch(ch);
 for (i=0; i<TR_CHN_REGS; i++)
  tr_wr(tr, TR_REG_CHNBASE+(i<<2), cr[i], 4);
 snd_mtxunlock(tr->lock);
}
