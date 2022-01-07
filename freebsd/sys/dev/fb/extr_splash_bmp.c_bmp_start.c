
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vi_depth; int vi_height; int vi_width; } ;
typedef TYPE_1__ video_info_t ;
typedef int video_adapter_t ;
typedef int u_char ;
struct TYPE_5__ {scalar_t__ data_size; int * data; } ;


 int ENODEV ;





 scalar_t__ bmp_Init (int *,int ,int ,int ) ;
 TYPE_3__ bmp_decoder ;
 scalar_t__ bootverbose ;
 int printf (char*,...) ;
 int splash_mode ;
 scalar_t__ vidd_get_info (int *,int,TYPE_1__*) ;

__attribute__((used)) static int
bmp_start(video_adapter_t *adp)
{

    static int modes[] = {
   130,
   129,
   131,
   132,




   128,
   -1,
    };
    video_info_t info;
    int i;

    if ((bmp_decoder.data == ((void*)0)) || (bmp_decoder.data_size <= 0)) {
 printf("splash_bmp: No bitmap file found\n");
 return ENODEV;
    }
    for (i = 0; modes[i] >= 0; ++i) {
 if ((vidd_get_info(adp, modes[i], &info) == 0) &&
     (bmp_Init((u_char *)bmp_decoder.data, info.vi_width,
        info.vi_height, info.vi_depth) == 0))
     break;
    }
    splash_mode = modes[i];
    if (splash_mode < 0)
 printf("splash_bmp: No appropriate video mode found\n");
    if (bootverbose)
 printf("bmp_start(): splash_mode:%d\n", splash_mode);
    return ((splash_mode < 0) ? ENODEV : 0);
}
