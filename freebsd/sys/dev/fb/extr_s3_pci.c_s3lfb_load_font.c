
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_adapter_t ;
typedef int u_char ;
struct TYPE_2__ {int (* load_font ) (int *,int,int,int,int *,int,int) ;} ;


 TYPE_1__* prevvidsw ;
 int stub1 (int *,int,int,int,int *,int,int) ;

__attribute__((used)) static int
s3lfb_load_font(video_adapter_t *adp, int page, int fontsize, int fontwidth,
        u_char *data, int ch, int count)
{
 return (*prevvidsw->load_font)(adp, page, fontsize, fontwidth, data,
  ch, count);
}
