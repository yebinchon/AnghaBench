
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int platform_t ;


 int realmaxaddr ;

__attribute__((used)) static vm_offset_t
chrp_real_maxaddr(platform_t plat)
{
 return (realmaxaddr);
}
