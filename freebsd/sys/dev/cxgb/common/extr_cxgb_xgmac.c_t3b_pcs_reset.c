
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmac {scalar_t__ offset; int adapter; } ;


 scalar_t__ A_XGM_RESET_CTRL ;
 int F_PCS_RESET_ ;
 int t3_set_reg_field (int ,scalar_t__,int ,int ) ;

void t3b_pcs_reset(struct cmac *mac)
{
 t3_set_reg_field(mac->adapter, A_XGM_RESET_CTRL + mac->offset,
    F_PCS_RESET_, 0);



 t3_set_reg_field(mac->adapter, A_XGM_RESET_CTRL + mac->offset, 0,
    F_PCS_RESET_);
}
