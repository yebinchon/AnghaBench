
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int CLOCK_DISABLE ;
 int mtk_clock_set (int ,int,int ) ;

__attribute__((used)) static int
mtk_clock_disable(device_t dev, int index)
{

 return mtk_clock_set(dev, index, CLOCK_DISABLE);
}
