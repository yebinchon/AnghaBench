
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vbus; } ;
typedef TYPE_1__* PVBUS_EXT ;
typedef int PVBUS ;


 int hpt_lock_vbus (TYPE_1__*) ;
 int hpt_unlock_vbus (TYPE_1__*) ;
 int ldm_intr (int ) ;

__attribute__((used)) static void hpt_pci_intr(void *arg)
{
 PVBUS_EXT vbus_ext = (PVBUS_EXT)arg;
 hpt_lock_vbus(vbus_ext);
 ldm_intr((PVBUS)vbus_ext->vbus);
 hpt_unlock_vbus(vbus_ext);
}
