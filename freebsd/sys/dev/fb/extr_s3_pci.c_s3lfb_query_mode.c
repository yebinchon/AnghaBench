
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_info_t ;
typedef int video_adapter_t ;
struct TYPE_2__ {int (* query_mode ) (int *,int *) ;} ;


 TYPE_1__* prevvidsw ;
 int stub1 (int *,int *) ;

__attribute__((used)) static int
s3lfb_query_mode(video_adapter_t *adp, video_info_t *info)
{
 return (*prevvidsw->query_mode)(adp, info);
}
