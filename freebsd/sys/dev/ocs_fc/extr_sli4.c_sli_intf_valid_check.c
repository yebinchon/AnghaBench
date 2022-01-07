
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int SLI4_INTF_VALID ;
 int SLI4_INTF_VALID_MASK ;
 int SLI4_INTF_VALID_SHIFT ;

__attribute__((used)) static uint8_t
sli_intf_valid_check(uint32_t val)
{
 return ((val >> SLI4_INTF_VALID_SHIFT) & SLI4_INTF_VALID_MASK) != SLI4_INTF_VALID;
}
