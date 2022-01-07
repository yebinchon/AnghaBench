
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_adapter_t ;
typedef int off_t ;
struct TYPE_2__ {int (* set_win_org ) (int *,int ) ;} ;


 TYPE_1__* prevvidsw ;
 int stub1 (int *,int ) ;

__attribute__((used)) static int
s3lfb_set_origin(video_adapter_t *adp, off_t offset)
{
 return (*prevvidsw->set_win_org)(adp, offset);
}
