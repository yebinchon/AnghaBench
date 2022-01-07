
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int UNIN_MPIC_OUTPUT_ENABLE ;
 int UNIN_MPIC_RESET ;
 int UNIN_TOGGLE_REG ;
 int unin_update_reg (int ,int ,int,int ) ;

__attribute__((used)) static void
unin_enable_mpic(device_t dev)
{
 unin_update_reg(dev, UNIN_TOGGLE_REG, UNIN_MPIC_RESET | UNIN_MPIC_OUTPUT_ENABLE, 0);
}
