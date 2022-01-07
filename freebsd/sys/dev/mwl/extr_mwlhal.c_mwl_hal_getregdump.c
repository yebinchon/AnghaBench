
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct mwl_hal_priv {int dummy; } ;
struct TYPE_3__ {int start; int end; } ;
typedef TYPE_1__ MWL_DIAG_REGRANGE ;


 int HostCmd_ACT_GEN_READ ;
 int MACREG_REG_FW_PRESENT ;
 scalar_t__ MWL_DIAG_BASE_BB ;
 scalar_t__ MWL_DIAG_BASE_RF ;
 scalar_t__ MWL_DIAG_ISBB (int) ;
 scalar_t__ MWL_DIAG_ISMAC (int) ;
 scalar_t__ MWL_DIAG_ISRF (int) ;
 int RD4 (struct mwl_hal_priv*,int) ;
 int getBBReg (struct mwl_hal_priv*,int ,scalar_t__,int*) ;
 int getRFReg (struct mwl_hal_priv*,int ,scalar_t__,int*) ;

__attribute__((used)) static u_int
mwl_hal_getregdump(struct mwl_hal_priv *mh, const MWL_DIAG_REGRANGE *regs,
 void *dstbuf, int space)
{
 uint32_t *dp = dstbuf;
 int i;

 for (i = 0; space >= 2*sizeof(uint32_t); i++) {
  u_int r = regs[i].start;
  u_int e = regs[i].end;
  *dp++ = (r<<16) | e;
  space -= sizeof(uint32_t);
  do {
   if (MWL_DIAG_ISMAC(r))
    *dp = RD4(mh, r);
   else if (MWL_DIAG_ISBB(r))
    getBBReg(mh, HostCmd_ACT_GEN_READ,
        r - MWL_DIAG_BASE_BB, dp);
   else if (MWL_DIAG_ISRF(r))
    getRFReg(mh, HostCmd_ACT_GEN_READ,
        r - MWL_DIAG_BASE_RF, dp);
   else if (r < 0x1000 || r == MACREG_REG_FW_PRESENT)
    *dp = RD4(mh, r);
   else
    *dp = 0xffffffff;
   dp++;
   r += sizeof(uint32_t);
   space -= sizeof(uint32_t);
  } while (r <= e && space >= sizeof(uint32_t));
 }
 return (char *) dp - (char *) dstbuf;
}
