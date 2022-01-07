
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_adapter_t ;
typedef int u_char ;
struct TYPE_2__ {int (* save_palette ) (int *,int *) ;} ;


 TYPE_1__* prevvidsw ;
 int stub1 (int *,int *) ;

__attribute__((used)) static int
s3lfb_save_palette(video_adapter_t *adp, u_char *palette)
{
 return (*prevvidsw->save_palette)(adp, palette);
}
