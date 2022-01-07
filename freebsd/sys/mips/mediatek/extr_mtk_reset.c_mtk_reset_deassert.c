
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int RESET_DEASSERT ;
 int mtk_reset_set (int ,int,int ) ;

__attribute__((used)) static int
mtk_reset_deassert(device_t dev, int index)
{

 return mtk_reset_set(dev, index, RESET_DEASSERT);
}
