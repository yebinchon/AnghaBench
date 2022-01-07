
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmac {scalar_t__ offset; int adapter; } ;


 scalar_t__ A_XGM_SERDES_STAT0 ;
 scalar_t__ A_XGM_SERDES_STAT1 ;
 scalar_t__ A_XGM_SERDES_STAT2 ;
 scalar_t__ A_XGM_SERDES_STAT3 ;
 int F_LOWSIGFORCEEN0 ;
 int F_LOWSIGFORCEEN1 ;
 int F_LOWSIGFORCEEN2 ;
 int F_LOWSIGFORCEEN3 ;
 int F_LOWSIGFORCEVALUE0 ;
 int F_LOWSIGFORCEVALUE1 ;
 int F_LOWSIGFORCEVALUE2 ;
 int F_LOWSIGFORCEVALUE3 ;
 int t3_set_reg_field (int ,scalar_t__,int,int) ;

void t3c_pcs_force_los(struct cmac *mac)
{
 t3_set_reg_field(mac->adapter, A_XGM_SERDES_STAT0 + mac->offset,
     F_LOWSIGFORCEEN0 | F_LOWSIGFORCEVALUE0,
     F_LOWSIGFORCEEN0 | F_LOWSIGFORCEVALUE0);
 t3_set_reg_field(mac->adapter, A_XGM_SERDES_STAT1 + mac->offset,
     F_LOWSIGFORCEEN1 | F_LOWSIGFORCEVALUE1,
     F_LOWSIGFORCEEN1 | F_LOWSIGFORCEVALUE1);
 t3_set_reg_field(mac->adapter, A_XGM_SERDES_STAT2 + mac->offset,
     F_LOWSIGFORCEEN2 | F_LOWSIGFORCEVALUE2,
     F_LOWSIGFORCEEN2 | F_LOWSIGFORCEVALUE2);
 t3_set_reg_field(mac->adapter, A_XGM_SERDES_STAT3 + mac->offset,
     F_LOWSIGFORCEEN3 | F_LOWSIGFORCEVALUE3,
     F_LOWSIGFORCEEN3 | F_LOWSIGFORCEVALUE3);



 t3_set_reg_field(mac->adapter, A_XGM_SERDES_STAT0 + mac->offset,
     F_LOWSIGFORCEEN0, 0);
 t3_set_reg_field(mac->adapter, A_XGM_SERDES_STAT1 + mac->offset,
     F_LOWSIGFORCEEN1, 0);
 t3_set_reg_field(mac->adapter, A_XGM_SERDES_STAT2 + mac->offset,
     F_LOWSIGFORCEEN2, 0);
 t3_set_reg_field(mac->adapter, A_XGM_SERDES_STAT3 + mac->offset,
     F_LOWSIGFORCEEN3, 0);
}
