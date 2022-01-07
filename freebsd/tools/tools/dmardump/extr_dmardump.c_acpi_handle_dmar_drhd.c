
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Address; int Segment; } ;
typedef TYPE_1__ ACPI_DMAR_HARDWARE_UNIT ;


 int handle_drhd (int ,int ) ;

__attribute__((used)) static void
acpi_handle_dmar_drhd(ACPI_DMAR_HARDWARE_UNIT *drhd)
{

 handle_drhd(drhd->Segment, drhd->Address);
}
