
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct amd_ntb_softc {int device; TYPE_1__* hw_info; } ;
struct TYPE_2__ {scalar_t__ db_count; } ;


 int amd_ntb_printf (int ,char*,scalar_t__) ;
 int ntb_db_event (int ,scalar_t__) ;

__attribute__((used)) static void
amd_ntb_interrupt(struct amd_ntb_softc *ntb, uint16_t vec)
{
 if (vec < ntb->hw_info->db_count)
  ntb_db_event(ntb->device, vec);
 else
  amd_ntb_printf(0, "Invalid vector %d\n", vec);
}
