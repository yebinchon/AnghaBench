
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_adapter_t ;
struct TYPE_2__ {int active; int initialized; } ;


 TYPE_1__ apm_softc ;
 int printf (char*) ;

__attribute__((used)) static int
apm_init(video_adapter_t *adp)
{
 if (!apm_softc.initialized || !apm_softc.active)
  printf("WARNING: apm_saver module requires apm enabled\n");
 return 0;
}
