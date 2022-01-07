
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef int device_t ;


 int EINVAL ;
 int RESET_ASSERT ;
 int SYSCTL_RSTCTRL ;
 int mtk_sysctl_clr_set (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int
mtk_reset_set(device_t dev, int index, int value)
{
 uint32_t mask;


 if (index < 1 || index > 31)
  return (EINVAL);

 mask = (1u << index);

 if (value == RESET_ASSERT)
  mtk_sysctl_clr_set(SYSCTL_RSTCTRL, 0, mask);
 else
  mtk_sysctl_clr_set(SYSCTL_RSTCTRL, mask, 0);

 return (0);
}
