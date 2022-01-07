
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tr_rchinfo {int active; int buffer; struct tr_info* parent; } ;
struct tr_info {int dummy; } ;
typedef int kobj_t ;


 int PCMTRIG_COMMON (int) ;
 int PCMTRIG_START ;
 int TR_REG_DMAR0 ;
 int TR_REG_DMAR11 ;
 int TR_REG_DMAR15 ;
 int TR_REG_DMAR4 ;
 int TR_REG_SBCTRL ;
 int sndbuf_getbufaddr (int ) ;
 int sndbuf_runsz (int ) ;
 int tr_rd (struct tr_info*,int ,int) ;
 int tr_wr (struct tr_info*,int ,int,int) ;

__attribute__((used)) static int
trrchan_trigger(kobj_t obj, void *data, int go)
{
 struct tr_rchinfo *ch = data;
 struct tr_info *tr = ch->parent;
 u_int32_t i;

 if (!PCMTRIG_COMMON(go))
  return 0;

 if (go == PCMTRIG_START) {

  tr_wr(tr, TR_REG_DMAR15, 0, 1);
  i = tr_rd(tr, TR_REG_DMAR11, 1) & 0x03;
  tr_wr(tr, TR_REG_DMAR11, i | 0x54, 1);

     tr_wr(tr, TR_REG_DMAR0, sndbuf_getbufaddr(ch->buffer), 4);

  i = tr_rd(tr, TR_REG_DMAR4, 4) & ~0x00ffffff;
  tr_wr(tr, TR_REG_DMAR4, i | (sndbuf_runsz(ch->buffer) - 1), 4);

  tr_wr(tr, TR_REG_SBCTRL, tr_rd(tr, TR_REG_SBCTRL, 1) | 1, 1);
  ch->active = 1;
 } else {
  tr_wr(tr, TR_REG_SBCTRL, tr_rd(tr, TR_REG_SBCTRL, 1) & ~7, 1);
  ch->active = 0;
 }


 return 0;
}
