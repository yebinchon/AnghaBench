
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int va_flags; } ;
typedef TYPE_1__ video_adapter_t ;


 int ENODEV ;
 int ISPALAVAIL (int ) ;
 int V_DISPLAY_ON ;
 scalar_t__ vidd_blank_display (TYPE_1__*,int ) ;

__attribute__((used)) static int
fade_init(video_adapter_t *adp)
{
 if (!ISPALAVAIL(adp->va_flags) &&
     vidd_blank_display(adp, V_DISPLAY_ON) != 0)
  return ENODEV;
 return 0;
}
