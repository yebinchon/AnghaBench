
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ VXLAN_VNI_MAX ;

__attribute__((used)) static int
vxlan_check_vni(uint32_t vni)
{

 return (vni >= VXLAN_VNI_MAX);
}
