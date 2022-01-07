
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct isp_sbussoftc {int* sbus_poff; } ;
struct TYPE_5__ {int isp_regs; } ;
typedef TYPE_1__ ispsoftc_t ;


 int ISP_LOGDEBUG3 ;
 int MEMORYBARRIER (TYPE_1__*,int ,int,int,int) ;
 int SYNC_REG ;
 int _BLK_REG_MASK ;
 int _BLK_REG_SHFT ;
 int bus_write_2 (int ,int,int ) ;
 int isp_prt (TYPE_1__*,int ,char*,int,int ) ;

__attribute__((used)) static void
isp_sbus_wr_reg(ispsoftc_t *isp, int regoff, uint32_t val)
{
 struct isp_sbussoftc *sbs = (struct isp_sbussoftc *) isp;
 int offset = sbs->sbus_poff[(regoff & _BLK_REG_MASK) >> _BLK_REG_SHFT];
 offset += (regoff & 0xff);
 isp_prt(isp, ISP_LOGDEBUG3,
     "isp_sbus_wr_reg(off %x) = %x", regoff, val);
 bus_write_2(isp->isp_regs, offset, val);
 MEMORYBARRIER(isp, SYNC_REG, offset, 2, -1);
}
