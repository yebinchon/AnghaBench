
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fdt_clock_info {scalar_t__ flags; } ;
typedef int device_t ;


 int EINVAL ;
 scalar_t__ FDT_CIFLAG_RUNNING ;
 int SYSCTL_CLKCFG1 ;
 int mtk_sysctl_get (int ) ;

__attribute__((used)) static int
mtk_clock_get_info(device_t dev, int index, struct fdt_clock_info *info)
{
 uint32_t mask;

 if (index < 0 || index > 31 || info == ((void*)0))
  return (EINVAL);

 if (mtk_sysctl_get(SYSCTL_CLKCFG1) & mask)
  info->flags = FDT_CIFLAG_RUNNING;
 else
  info->flags = 0;

 return (0);
}
