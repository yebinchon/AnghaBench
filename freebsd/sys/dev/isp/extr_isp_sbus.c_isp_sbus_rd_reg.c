
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct isp_sbussoftc {int* sbus_poff; } ;
typedef int ispsoftc_t ;


 int BXR2 (int *,int) ;
 int ISP_LOGDEBUG3 ;
 int _BLK_REG_MASK ;
 int _BLK_REG_SHFT ;
 int isp_prt (int *,int ,char*,int,int ) ;

__attribute__((used)) static uint32_t
isp_sbus_rd_reg(ispsoftc_t *isp, int regoff)
{
 uint16_t rval;
 struct isp_sbussoftc *sbs = (struct isp_sbussoftc *) isp;
 int offset = sbs->sbus_poff[(regoff & _BLK_REG_MASK) >> _BLK_REG_SHFT];
 offset += (regoff & 0xff);
 rval = BXR2(isp, offset);
 isp_prt(isp, ISP_LOGDEBUG3,
     "isp_sbus_rd_reg(off %x) = %x", regoff, rval);
 return (rval);
}
