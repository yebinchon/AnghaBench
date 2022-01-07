
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int mem_res; } ;


 int MTK_SYSCTL_LOCK (TYPE_1__*) ;
 int MTK_SYSCTL_UNLOCK (TYPE_1__*) ;
 int bus_write_4 (int ,int ,int ) ;
 TYPE_1__* mtk_sysctl_sc ;

void
mtk_sysctl_set(uint32_t reg, uint32_t val)
{

 MTK_SYSCTL_LOCK(mtk_sysctl_sc);
 bus_write_4(mtk_sysctl_sc->mem_res, reg, val);
 MTK_SYSCTL_UNLOCK(mtk_sysctl_sc);
}
