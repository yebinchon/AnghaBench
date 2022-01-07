
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr_info {int type; } ;



 int SPA_REG_CODECST ;
 int SPA_REG_GPIO ;
 int SPA_RST_OFF ;
 int TDX_CDC_ON ;

 int TDX_REG_CODECST ;
 int TNX_CDC_ON ;

 int TNX_REG_CODECST ;
 int TR_CIR_ADDRENA ;
 int TR_CIR_MIDENA ;
 int TR_REG_CIR ;
 int tr_wr (struct tr_info*,int ,int,int) ;

__attribute__((used)) static int
tr_init(struct tr_info *tr)
{
 switch (tr->type) {
 case 130:
  tr_wr(tr, SPA_REG_GPIO, 0, 4);
  tr_wr(tr, SPA_REG_CODECST, SPA_RST_OFF, 4);
  break;
 case 129:
  tr_wr(tr, TDX_REG_CODECST, TDX_CDC_ON, 4);
  break;
 case 128:
  tr_wr(tr, TNX_REG_CODECST, TNX_CDC_ON, 4);
  break;
 }

 tr_wr(tr, TR_REG_CIR, TR_CIR_MIDENA | TR_CIR_ADDRENA, 4);
 return 0;
}
