
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int SLI4_INTF_SLI_FAMILY_MASK ;
 int SLI4_INTF_SLI_FAMILY_SHIFT ;

__attribute__((used)) static uint8_t
sli_intf_sli_family(uint32_t val)
{
 return ((val >> SLI4_INTF_SLI_FAMILY_SHIFT) & SLI4_INTF_SLI_FAMILY_MASK);
}
