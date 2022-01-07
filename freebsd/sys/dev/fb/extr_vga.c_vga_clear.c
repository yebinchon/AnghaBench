
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int vi_mem_model; } ;
struct TYPE_8__ {TYPE_1__ va_info; } ;
typedef TYPE_2__ video_adapter_t ;






 int direct_fill (TYPE_2__*,int ) ;
 int packed_fill (TYPE_2__*,int ) ;
 int planar_fill (TYPE_2__*,int ) ;

__attribute__((used)) static int
vga_clear(video_adapter_t *adp)
{
    switch (adp->va_info.vi_mem_model) {
    case 128:

 break;
    case 129:
 planar_fill(adp, 0);
 break;
    case 130:
 packed_fill(adp, 0);
 break;
    case 131:
 direct_fill(adp, 0);
 break;
    }
    return 0;
}
