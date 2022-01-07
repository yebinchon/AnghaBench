
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vi_flags; } ;
typedef TYPE_1__ video_info_t ;
typedef int video_adapter_t ;
typedef int u_char ;


 int V_INFO_COLOR ;
 scalar_t__ vga_get_info (int *,int,TYPE_1__*) ;

__attribute__((used)) static void
clear_mode_map(video_adapter_t *adp, u_char *map[], int max, int color)
{
    video_info_t info;
    int i;





    for(i = 0; i < max; ++i) {
 if (vga_get_info(adp, i, &info))
     continue;
 if ((info.vi_flags & V_INFO_COLOR) != color)
     map[i] = ((void*)0);
    }
}
