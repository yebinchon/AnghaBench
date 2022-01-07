
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t DCBX_INVALID_COS ;
 size_t ELINK_DCBX_MAX_NUM_COS ;

__attribute__((used)) static void elink_ets_e3b0_sp_pri_to_cos_init(uint8_t *sp_pri_to_cos)
{
 uint8_t pri = 0;
 for (pri = 0; pri < ELINK_DCBX_MAX_NUM_COS; pri++)
  sp_pri_to_cos[pri] = DCBX_INVALID_COS;
}
