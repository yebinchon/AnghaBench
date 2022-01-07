
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_adapter_t ;
typedef int u_long ;
typedef int caddr_t ;
struct TYPE_2__ {int (* ioctl ) (int *,int ,int ) ;} ;


 TYPE_1__* prevvidsw ;
 int stub1 (int *,int ,int ) ;

__attribute__((used)) static int
s3lfb_ioctl(video_adapter_t *adp, u_long cmd, caddr_t arg)
{
 return (*prevvidsw->ioctl)(adp, cmd, arg);
}
