
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ fwrev; } ;
struct TYPE_8__ {scalar_t__ asic_type; scalar_t__ asic_rev; } ;
struct TYPE_9__ {TYPE_1__ workaround; TYPE_2__ sli; } ;
typedef TYPE_3__ ocs_hw_t ;
typedef int int32_t ;
struct TYPE_10__ {scalar_t__ asic_type; scalar_t__ asic_rev; scalar_t__ fwrev_low; scalar_t__ fwrev_high; } ;
typedef TYPE_4__ hw_workaround_t ;


 scalar_t__ HW_FWREV_MAX ;
 scalar_t__ SLI4_ASIC_REV_ANY ;
 scalar_t__ SLI4_ASIC_TYPE_ANY ;

__attribute__((used)) static int32_t
ocs_hw_workaround_match(ocs_hw_t *hw, hw_workaround_t *w)
{
 return (((w->asic_type == SLI4_ASIC_TYPE_ANY) || (w->asic_type == hw->sli.asic_type)) &&
      ((w->asic_rev == SLI4_ASIC_REV_ANY) || (w->asic_rev == hw->sli.asic_rev)) &&
      (w->fwrev_low <= hw->workaround.fwrev) &&
      ((w->fwrev_high == HW_FWREV_MAX) || (hw->workaround.fwrev < w->fwrev_high)));
}
