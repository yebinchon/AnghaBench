
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_adapter_t ;
struct TYPE_2__ {int (* fill_rect ) (int *,int,int,int,int,int) ;} ;


 TYPE_1__* prevvidsw ;
 int stub1 (int *,int,int,int,int,int) ;

__attribute__((used)) static int
vesa_fill_rect(video_adapter_t *adp, int val, int x, int y, int cx, int cy)
{

 return ((*prevvidsw->fill_rect)(adp, val, x, y, cx, cy));
}
