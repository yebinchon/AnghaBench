
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 int DELAY (int) ;
 int UNIN_HWINIT_STATE ;
 int UNIN_PWR_IDLE2 ;
 int UNIN_PWR_MASK ;
 int UNIN_PWR_MGMT ;
 int UNIN_PWR_SLEEP ;
 int UNIN_SLEEPING ;
 int * unin_chip ;
 int unin_update_reg (int *,int ,int ,int ) ;

int
unin_chip_sleep(device_t dev, int idle)
{
 if (dev == ((void*)0))
  dev = unin_chip;

 unin_update_reg(dev, UNIN_HWINIT_STATE, UNIN_SLEEPING, 0);
 DELAY(10);
 if (idle)
  unin_update_reg(dev, UNIN_PWR_MGMT, UNIN_PWR_IDLE2, UNIN_PWR_MASK);
 else
  unin_update_reg(dev, UNIN_PWR_MGMT, UNIN_PWR_SLEEP, UNIN_PWR_MASK);
 DELAY(10);

 return (0);
}
