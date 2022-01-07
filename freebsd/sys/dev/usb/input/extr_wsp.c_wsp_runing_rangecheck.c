
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsp_tuning {int enable_single_tap_clicks; int scr_hor_threshold; int pressure_tap_threshold; int pressure_untouch_threshold; int pressure_touch_threshold; int z_factor; int scale_factor; } ;


 int WSP_CLAMP (int ,int,int) ;

__attribute__((used)) static void
wsp_runing_rangecheck(struct wsp_tuning *ptun)
{
 WSP_CLAMP(ptun->scale_factor, 1, 63);
 WSP_CLAMP(ptun->z_factor, 1, 63);
 WSP_CLAMP(ptun->pressure_touch_threshold, 1, 255);
 WSP_CLAMP(ptun->pressure_untouch_threshold, 1, 255);
 WSP_CLAMP(ptun->pressure_tap_threshold, 1, 255);
 WSP_CLAMP(ptun->scr_hor_threshold, 1, 255);
 WSP_CLAMP(ptun->enable_single_tap_clicks, 0, 1);
}
