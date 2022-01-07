
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_adapter_t ;
struct TYPE_2__ {int (* save_state ) (int *,void*,size_t) ;} ;


 TYPE_1__* prevvidsw ;
 int stub1 (int *,void*,size_t) ;

__attribute__((used)) static int
s3lfb_save_state(video_adapter_t *adp, void *p, size_t size)
{
 return (*prevvidsw->save_state)(adp, p, size);
}
