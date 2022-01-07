
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bus_id; void* bus_type; } ;
struct TYPE_3__ {int config_type; } ;


 int DEFAULT_IO_APIC_BASE ;
 TYPE_2__* busses ;
 void*** default_data ;
 int ioapic_create (int ,int,int ) ;
 int * ioapics ;
 TYPE_1__* mpfps ;
 int mptable_nbusses ;
 int mptable_parse_apics_and_busses_handler ;
 int mptable_walk_table (int ,int *) ;

__attribute__((used)) static void
mptable_parse_apics_and_busses(void)
{


 if (mpfps->config_type != 0) {
  ioapics[2] = ioapic_create(DEFAULT_IO_APIC_BASE, 2, 0);
  busses[0].bus_id = 0;
  busses[0].bus_type = default_data[mpfps->config_type - 1][2];
  if (mptable_nbusses > 1) {
   busses[1].bus_id = 1;
   busses[1].bus_type =
       default_data[mpfps->config_type - 1][4];
  }
 } else
  mptable_walk_table(mptable_parse_apics_and_busses_handler,
      ((void*)0));
}
