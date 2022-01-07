
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tr_info {int type; int rev; int lock; } ;
typedef int kobj_t ;



 int SPA_CDC_RWSTAT ;

 int SPA_REG_CODECWR ;
 int TDX_CDC_RWSTAT ;

 int TDX_REG_CODECWR ;
 int TNX_CDC_RWSTAT ;
 int TNX_CDC_SEC ;

 int TNX_REG_CODECWR ;
 int TR_CDC_DATA ;
 int TR_TIMEOUT_CDC ;
 int printf (char*,...) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int tr_rd (struct tr_info*,int,int) ;
 int tr_rdcd (void*,int) ;
 int tr_wr (struct tr_info*,int,int,int) ;

__attribute__((used)) static int
tr_wrcd(kobj_t obj, void *devinfo, int regno, u_int32_t data)
{
 struct tr_info *tr = (struct tr_info *)devinfo;
 int i, j, treg, trw;

 switch (tr->type) {
 case 130:
  treg=SPA_REG_CODECWR;
  trw=SPA_CDC_RWSTAT;
  break;
 case 131:
 case 129:
  treg=TDX_REG_CODECWR;
  trw=TDX_CDC_RWSTAT;
  break;
 case 128:
  treg=TNX_REG_CODECWR;
  trw=TNX_CDC_RWSTAT | ((regno & 0x100)? TNX_CDC_SEC : 0);
  break;
 default:
  printf("!!! tr_wrcd defaulted !!!");
  return -1;
 }

 i = 0;

 regno &= 0x7f;



 j=trw;
 snd_mtxlock(tr->lock);
 if (tr->type == 131) {
  j = trw;
  for (i = TR_TIMEOUT_CDC; (i > 0) && (j & trw); i--)
   j = tr_rd(tr, treg, 4);
  if (i > 0) {
   u_int32_t chk1, chk2;
   chk1 = tr_rd(tr, 0xc8, 4);
   chk2 = tr_rd(tr, 0xc8, 4);
   for (i = TR_TIMEOUT_CDC; (i > 0) && (chk1 == chk2);
     i--)
    chk2 = tr_rd(tr, 0xc8, 4);
  }
 }
 if (tr->type != 131 || i > 0) {
  for (i=TR_TIMEOUT_CDC; (i>0) && (j & trw); i--)
   j=tr_rd(tr, treg, 4);
  if (tr->type == 131 && tr->rev > 0x01)
         trw |= 0x0100;
  tr_wr(tr, treg, (data << TR_CDC_DATA) | regno | trw, 4);
 }



 snd_mtxunlock(tr->lock);
 if (i==0) printf("codec timeout writing %x, data %x\n", regno, data);
 return (i > 0)? 0 : -1;
}
