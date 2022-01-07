
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int channel; } ;
struct tr_info {int hwchns; int playchns; TYPE_1__ recchinfo; struct tr_chinfo* chinfo; } ;
struct tr_chinfo {int bufhalf; int channel; } ;


 int TR_INT_ADDR ;
 int TR_INT_SB ;
 int TR_REG_ADDRINTA ;
 int TR_REG_ADDRINTB ;
 int TR_REG_CSPF_A ;
 int TR_REG_CSPF_B ;
 int TR_REG_MISCINT ;
 int TR_REG_SBR10 ;
 int TR_REG_SBR9 ;
 int chn_intr (int ) ;
 int tr_rd (struct tr_info*,int ,int) ;
 int tr_wr (struct tr_info*,int ,int,int) ;

__attribute__((used)) static void
tr_intr(void *p)
{
 struct tr_info *tr = (struct tr_info *)p;
 struct tr_chinfo *ch;
 u_int32_t active, mask, bufhalf, chnum, intsrc;
 int tmp;

 intsrc = tr_rd(tr, TR_REG_MISCINT, 4);
 if (intsrc & TR_INT_ADDR) {
  chnum = 0;
  while (chnum < tr->hwchns) {
   mask = 0x00000001;
   active = tr_rd(tr, (chnum < 32)? TR_REG_ADDRINTA : TR_REG_ADDRINTB, 4);
   bufhalf = tr_rd(tr, (chnum < 32)? TR_REG_CSPF_A : TR_REG_CSPF_B, 4);
   if (active) {
    do {
     if (active & mask) {
      tmp = (bufhalf & mask)? 1 : 0;
      if (chnum < tr->playchns) {
       ch = &tr->chinfo[chnum];

       if (ch->bufhalf != tmp) {
        chn_intr(ch->channel);
        ch->bufhalf = tmp;
       }
      }
     }
     chnum++;
     mask <<= 1;
    } while (chnum & 31);
   } else
    chnum += 32;

   tr_wr(tr, (chnum <= 32)? TR_REG_ADDRINTA : TR_REG_ADDRINTB, active, 4);
  }
 }
 if (intsrc & TR_INT_SB) {
  chn_intr(tr->recchinfo.channel);
  tr_rd(tr, TR_REG_SBR9, 1);
  tr_rd(tr, TR_REG_SBR10, 1);
 }
}
