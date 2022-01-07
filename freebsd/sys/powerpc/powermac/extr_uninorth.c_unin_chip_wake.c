
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 int DELAY (int) ;
 int UNIN_HWINIT_STATE ;
 int UNIN_PWR_MASK ;
 int UNIN_PWR_MGMT ;
 int UNIN_PWR_NORMAL ;
 int UNIN_RUNNING ;
 int * unin_chip ;
 int unin_update_reg (int *,int ,int ,int ) ;

int
unin_chip_wake(device_t dev)
{

 if (dev == ((void*)0))
  dev = unin_chip;
 unin_update_reg(dev, UNIN_PWR_MGMT, UNIN_PWR_NORMAL, UNIN_PWR_MASK);
 DELAY(10);
 unin_update_reg(dev, UNIN_HWINIT_STATE, UNIN_RUNNING, 0);
 DELAY(100);

 return (0);
}
