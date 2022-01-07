
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int UNIN_CLOCKCNTL ;
 int UNIN_CLOCKCNTL_GMAC ;
 int unin_update_reg (int ,int ,int ,int ) ;

__attribute__((used)) static void
unin_enable_gmac(device_t dev)
{
 unin_update_reg(dev, UNIN_CLOCKCNTL, UNIN_CLOCKCNTL_GMAC, 0);
}
