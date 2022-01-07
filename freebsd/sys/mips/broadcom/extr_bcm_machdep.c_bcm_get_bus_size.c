
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int bus_size_t ;


 int BHND_DEFAULT_ENUM_SIZE ;
 scalar_t__ resource_long_value (char*,int ,char*,long*) ;

__attribute__((used)) static bus_size_t
bcm_get_bus_size(void)
{
 long msize;

 if (resource_long_value("bhnd", 0, "msize", &msize) == 0)
  return ((u_long)msize);

 return (BHND_DEFAULT_ENUM_SIZE);
}
