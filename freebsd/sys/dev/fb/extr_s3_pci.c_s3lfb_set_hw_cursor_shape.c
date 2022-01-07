
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_adapter_t ;
struct TYPE_2__ {int (* set_hw_cursor_shape ) (int *,int,int,int,int) ;} ;


 TYPE_1__* prevvidsw ;
 int stub1 (int *,int,int,int,int) ;

__attribute__((used)) static int
s3lfb_set_hw_cursor_shape(video_adapter_t *adp, int base, int height,
    int celsize, int blink)
{
 return (*prevvidsw->set_hw_cursor_shape)(adp, base, height,
   celsize, blink);
}
