
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_gtt {int dummy; } ;
struct TYPE_2__ {struct intel_gtt base; } ;


 struct intel_gtt agp_intel_gtt_get (int ) ;
 int intel_agp ;
 TYPE_1__ intel_private ;

struct intel_gtt *
intel_gtt_get(void)
{

 intel_private.base = agp_intel_gtt_get(intel_agp);
 return (&intel_private.base);
}
