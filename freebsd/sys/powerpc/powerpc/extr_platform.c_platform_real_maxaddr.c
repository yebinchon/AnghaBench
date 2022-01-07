
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int PLATFORM_REAL_MAXADDR (int ) ;
 int plat_obj ;

vm_offset_t
platform_real_maxaddr(void)
{
 return (PLATFORM_REAL_MAXADDR(plat_obj));
}
