
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;


 int ENODEV ;
 int V_DISPLAY_ON ;
 scalar_t__ vidd_blank_display (int *,int ) ;

__attribute__((used)) static int
green_init(video_adapter_t *adp)
{
 if (vidd_blank_display(adp, V_DISPLAY_ON) == 0)
  return 0;
 return ENODEV;
}
