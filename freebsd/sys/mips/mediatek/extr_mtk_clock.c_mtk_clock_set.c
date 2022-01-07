
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef int device_t ;


 int CLOCK_ENABLE ;
 int EINVAL ;
 int SYSCTL_CLKCFG1 ;
 int mtk_sysctl_clr_set (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int
mtk_clock_set(device_t dev, int index, int value)
{
 uint32_t mask;


 if (index < 0 || index > 31)
  return (EINVAL);

 mask = (1u << index);

 if (value == CLOCK_ENABLE)
  mtk_sysctl_clr_set(SYSCTL_CLKCFG1, 0, mask);
 else
  mtk_sysctl_clr_set(SYSCTL_CLKCFG1, mask, 0);

 return (0);
}
