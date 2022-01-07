
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
typedef int u_long ;
typedef int caddr_t ;


 int fb_commonioctl (int *,int ,int ) ;

__attribute__((used)) static int
terasic_mtl_vidsw_ioctl(video_adapter_t *adp, u_long cmd, caddr_t data)
{

 return (fb_commonioctl(adp, cmd, data));
}
