
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int video_info_t ;
struct TYPE_6__ {int va_name; } ;
typedef TYPE_1__ video_adapter_t ;


 int fb_dump_adp_info (int ,TYPE_1__*,int) ;
 int fb_dump_mode_info (int ,TYPE_1__*,int *,int) ;
 int machfb_get_info (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
machfb_diag(video_adapter_t *adp, int level)
{
 video_info_t info;

 fb_dump_adp_info(adp->va_name, adp, level);
 machfb_get_info(adp, 0, &info);
 fb_dump_mode_info(adp->va_name, adp, &info, level);

 return (0);
}
