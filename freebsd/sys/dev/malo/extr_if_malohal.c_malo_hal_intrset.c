
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct malo_hal {int mh_imask; } ;


 int MALO_REG_A2H_INTERRUPT_MASK ;
 int MALO_REG_INT_CODE ;
 int malo_hal_read4 (struct malo_hal*,int ) ;
 int malo_hal_write4 (struct malo_hal*,int ,int ) ;

void
malo_hal_intrset(struct malo_hal *mh, uint32_t mask)
{

 malo_hal_write4(mh, MALO_REG_A2H_INTERRUPT_MASK, 0);
 (void)malo_hal_read4(mh, MALO_REG_INT_CODE);

 mh->mh_imask = mask;
 malo_hal_write4(mh, MALO_REG_A2H_INTERRUPT_MASK, mask);
 (void)malo_hal_read4(mh, MALO_REG_INT_CODE);
}
