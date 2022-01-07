
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vi_height; } ;
struct TYPE_6__ {int va_line_width; int va_window; int va_window_size; TYPE_1__ va_info; } ;
typedef TYPE_2__ video_adapter_t ;


 int fill_io (int,int ,int) ;
 int imin (int,int ) ;
 int vidd_set_win_org (TYPE_2__*,int) ;

__attribute__((used)) static void
packed_fill(video_adapter_t *adp, int val)
{
    int length;
    int at;
    int l;

    at = 0;
    length = adp->va_line_width*adp->va_info.vi_height;
    while (length > 0) {
 l = imin(length, adp->va_window_size);
 vidd_set_win_org(adp, at);
 fill_io(val, adp->va_window, l);
 length -= l;
 at += l;
    }
}
