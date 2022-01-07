
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct detailed_data_monitor_range {int flags; } ;
struct TYPE_4__ {struct detailed_data_monitor_range range; } ;
struct detailed_non_pixel {scalar_t__ type; TYPE_2__ data; } ;
struct TYPE_3__ {struct detailed_non_pixel other_data; } ;
struct detailed_timing {TYPE_1__ data; } ;
struct detailed_mode_closure {int edid; int connector; int modes; } ;


 scalar_t__ EDID_DETAIL_MONITOR_RANGE ;
 int drm_cvt_modes_for_range (int ,int ,struct detailed_timing*) ;
 scalar_t__ drm_dmt_modes_for_range (int ,int ,struct detailed_timing*) ;
 int drm_gtf_modes_for_range (int ,int ,struct detailed_timing*) ;
 int version_greater (int ,int,int) ;

__attribute__((used)) static void
do_inferred_modes(struct detailed_timing *timing, void *c)
{
 struct detailed_mode_closure *closure = c;
 struct detailed_non_pixel *data = &timing->data.other_data;
 struct detailed_data_monitor_range *range = &data->data.range;

 if (data->type != EDID_DETAIL_MONITOR_RANGE)
  return;

 closure->modes += drm_dmt_modes_for_range(closure->connector,
        closure->edid,
        timing);

 if (!version_greater(closure->edid, 1, 1))
  return;

 switch (range->flags) {
 case 0x02:
 case 0x00:
  closure->modes += drm_gtf_modes_for_range(closure->connector,
         closure->edid,
         timing);
  break;
 case 0x04:
  if (!version_greater(closure->edid, 1, 3))
   break;

  closure->modes += drm_cvt_modes_for_range(closure->connector,
         closure->edid,
         timing);
  break;
 case 0x01:
 default:
  break;
 }
}
