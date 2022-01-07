
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_adapter_t ;
struct TYPE_2__ {int (* set_hw_cursor ) (int *,int,int) ;} ;


 TYPE_1__* prevvidsw ;
 int stub1 (int *,int,int) ;

__attribute__((used)) static int
vesa_set_hw_cursor(video_adapter_t *adp, int col, int row)
{

 return ((*prevvidsw->set_hw_cursor)(adp, col, row));
}
