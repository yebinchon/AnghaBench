
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ config_type; } ;


 int APIC_ID_ALL ;
 int APIC_LVT_DM_EXTINT ;
 int APIC_LVT_DM_NMI ;
 int APIC_LVT_LINT0 ;
 int APIC_LVT_LINT1 ;
 int lapic_set_lvt_mode (int ,int ,int ) ;
 TYPE_1__* mpfps ;
 int mptable_parse_default_config_ints () ;
 int mptable_parse_ints_handler ;
 int mptable_walk_table (int ,int *) ;

__attribute__((used)) static void
mptable_parse_ints(void)
{


 if (mpfps->config_type != 0) {

  lapic_set_lvt_mode(APIC_ID_ALL, APIC_LVT_LINT0,
      APIC_LVT_DM_EXTINT);
  lapic_set_lvt_mode(APIC_ID_ALL, APIC_LVT_LINT1, APIC_LVT_DM_NMI);


  mptable_parse_default_config_ints();
 } else
  mptable_walk_table(mptable_parse_ints_handler, ((void*)0));
}
