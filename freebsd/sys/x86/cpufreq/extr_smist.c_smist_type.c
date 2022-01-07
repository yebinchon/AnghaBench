
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int CPUFREQ_TYPE_ABSOLUTE ;
 int EINVAL ;

__attribute__((used)) static int
smist_type(device_t dev, int *type)
{

 if (type == ((void*)0))
  return (EINVAL);

 *type = CPUFREQ_TYPE_ABSOLUTE;
 return (0);
}
