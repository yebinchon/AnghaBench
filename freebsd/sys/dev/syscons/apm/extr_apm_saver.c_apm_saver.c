
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_adapter_t ;
struct TYPE_2__ {int active; int initialized; } ;


 int apm_display (int) ;
 TYPE_1__ apm_softc ;
 int blanked ;

__attribute__((used)) static int
apm_saver(video_adapter_t *adp, int blank)
{
 if (!apm_softc.initialized || !apm_softc.active)
  return 0;

 if (blank==blanked)
  return 0;

 blanked=blank;

 apm_display(!blanked);

 return 0;
}
