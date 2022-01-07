
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int32_t ;
struct tr_info {int type; int rev; int lock; } ;
typedef int kobj_t ;



 int SPA_CDC_RWSTAT ;

 int SPA_REG_CODECRD ;
 int TDX_CDC_RWSTAT ;

 int TDX_REG_CODECRD ;
 int TDX_REG_CODECWR ;
 int TNX_CDC_RWSTAT ;

 int TNX_REG_CODEC1RD ;
 int TNX_REG_CODEC2RD ;
 int TR_CDC_DATA ;
 int TR_TIMEOUT_CDC ;
 int printf (char*,...) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 void* tr_rd (struct tr_info*,int,int) ;
 int tr_wr (struct tr_info*,int,int,int) ;

__attribute__((used)) static int
tr_rdcd(kobj_t obj, void *devinfo, int regno)
{
 struct tr_info *tr = (struct tr_info *)devinfo;
 int i, j, treg, trw;

 switch (tr->type) {
 case 130:
  treg=SPA_REG_CODECRD;
  trw=SPA_CDC_RWSTAT;
  break;
 case 131:
  if (tr->rev > 0x01)
    treg=TDX_REG_CODECWR;
  else
    treg=TDX_REG_CODECRD;
  trw=TDX_CDC_RWSTAT;
  break;
 case 129:
  treg=TDX_REG_CODECRD;
  trw=TDX_CDC_RWSTAT;
  break;
 case 128:
  treg=(regno & 0x100)? TNX_REG_CODEC2RD : TNX_REG_CODEC1RD;
  trw=TNX_CDC_RWSTAT;
  break;
 default:
  printf("!!! tr_rdcd defaulted !!!\n");
  return -1;
 }

 i = j = 0;

 regno &= 0x7f;
 snd_mtxlock(tr->lock);
 if (tr->type == 131) {
  u_int32_t chk1, chk2;
  j = trw;
  for (i = TR_TIMEOUT_CDC; (i > 0) && (j & trw); i--)
   j = tr_rd(tr, treg, 4);
  if (i > 0) {
   chk1 = tr_rd(tr, 0xc8, 4);
   chk2 = tr_rd(tr, 0xc8, 4);
   for (i = TR_TIMEOUT_CDC; (i > 0) && (chk1 == chk2);
     i--)
    chk2 = tr_rd(tr, 0xc8, 4);
  }
 }
 if (tr->type != 131 || i > 0) {
  tr_wr(tr, treg, regno | trw, 4);
  j=trw;
  for (i=TR_TIMEOUT_CDC; (i > 0) && (j & trw); i--)
          j=tr_rd(tr, treg, 4);
 }
 snd_mtxunlock(tr->lock);
 if (i == 0) printf("codec timeout during read of register %x\n", regno);
 return (j >> TR_CDC_DATA) & 0xffff;
}
