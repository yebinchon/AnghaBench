
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_DELMODE_NMI ;
 int APIC_DESTMODE_PHY ;
 int APIC_DEST_DESTFLD ;
 int APIC_LEVEL_ASSERT ;
 int APIC_TRIGMOD_EDGE ;
 int boot_cpu_id ;
 int lapic_ipi_raw (int,int ) ;
 int lapic_ipi_wait (int) ;

__attribute__((used)) static void
watchdog_ipi_nmi(void)
{




 lapic_ipi_raw(APIC_DEST_DESTFLD | APIC_TRIGMOD_EDGE |
     APIC_LEVEL_ASSERT | APIC_DESTMODE_PHY | APIC_DELMODE_NMI,
     boot_cpu_id);
 lapic_ipi_wait(-1);
}
