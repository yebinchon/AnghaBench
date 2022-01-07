
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_adapter_t ;
struct TYPE_2__ {int (* load_state ) (int *,void*) ;} ;


 TYPE_1__* prevvidsw ;
 int stub1 (int *,void*) ;

__attribute__((used)) static int
s3lfb_load_state(video_adapter_t *adp, void *p)
{
 return (*prevvidsw->load_state)(adp, p);
}
