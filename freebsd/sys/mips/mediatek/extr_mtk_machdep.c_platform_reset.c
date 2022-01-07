
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mtk_soc_reset () ;

void
platform_reset(void)
{

 mtk_soc_reset();
}
