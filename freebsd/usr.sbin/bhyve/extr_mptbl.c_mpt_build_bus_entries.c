
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* bus_entry_ptr ;
struct TYPE_4__ {int bus_id; int bus_type; void* type; } ;


 void* MPCT_ENTRY_BUS ;
 int MPE_BUSNAME_ISA ;
 int MPE_BUSNAME_LEN ;
 int MPE_BUSNAME_PCI ;
 int memcpy (int ,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
mpt_build_bus_entries(bus_entry_ptr mpeb)
{

 memset(mpeb, 0, sizeof(*mpeb));
 mpeb->type = MPCT_ENTRY_BUS;
 mpeb->bus_id = 0;
 memcpy(mpeb->bus_type, MPE_BUSNAME_PCI, MPE_BUSNAME_LEN);
 mpeb++;

 memset(mpeb, 0, sizeof(*mpeb));
 mpeb->type = MPCT_ENTRY_BUS;
 mpeb->bus_id = 1;
 memcpy(mpeb->bus_type, MPE_BUSNAME_ISA, MPE_BUSNAME_LEN);
}
