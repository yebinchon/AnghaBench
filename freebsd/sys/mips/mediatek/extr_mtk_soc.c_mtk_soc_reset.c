
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYSCTL_RSTCTRL ;
 int mtk_sysctl_clr_set (int ,int,int) ;

void
mtk_soc_reset(void)
{

 mtk_sysctl_clr_set(SYSCTL_RSTCTRL, 0, 1);
 mtk_sysctl_clr_set(SYSCTL_RSTCTRL, 1, 0);
}
