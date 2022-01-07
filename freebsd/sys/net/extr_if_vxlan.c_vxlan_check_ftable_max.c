
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ VXLAN_FTABLE_MAX ;

__attribute__((used)) static int
vxlan_check_ftable_max(uint32_t max)
{

 return (max > VXLAN_FTABLE_MAX);
}
