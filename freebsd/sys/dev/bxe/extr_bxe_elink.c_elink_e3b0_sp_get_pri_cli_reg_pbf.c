
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int elink_e3b0_sp_get_pri_cli_reg (int const,int const,int const,int const,int) ;

__attribute__((used)) static uint64_t elink_e3b0_sp_get_pri_cli_reg_pbf(const uint8_t cos, const uint8_t pri_set)
{
 const uint8_t pbf_cos_offset = 0;
 const uint8_t pbf_pri_offset = 0;

 return elink_e3b0_sp_get_pri_cli_reg(cos, pbf_cos_offset, pri_set,
  pbf_pri_offset, 3);

}
