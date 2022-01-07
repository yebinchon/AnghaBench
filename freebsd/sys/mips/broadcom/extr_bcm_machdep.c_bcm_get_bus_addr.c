
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int bus_addr_t ;


 int BHND_DEFAULT_CHIPC_ADDR ;
 scalar_t__ resource_long_value (char*,int ,char*,long*) ;

__attribute__((used)) static bus_addr_t
bcm_get_bus_addr(void)
{
 long maddr;

 if (resource_long_value("bhnd", 0, "maddr", &maddr) == 0)
  return ((u_long)maddr);

 return (BHND_DEFAULT_CHIPC_ADDR);
}
