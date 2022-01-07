
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;


 int V_DISPLAY_ON ;
 int V_DISPLAY_STAND_BY ;
 int vidd_blank_display (int *,int ) ;

__attribute__((used)) static int
green_saver(video_adapter_t *adp, int blank)
{
 vidd_blank_display(adp,
     (blank) ? V_DISPLAY_STAND_BY : V_DISPLAY_ON);
 return 0;
}
