
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_DELMODE_INIT ;
 int APIC_DELMODE_STARTUP ;
 int APIC_DESTMODE_PHY ;
 int APIC_DEST_DESTFLD ;
 int APIC_LEVEL_ASSERT ;
 int APIC_LEVEL_DEASSERT ;
 int APIC_TRIGMOD_EDGE ;
 int APIC_TRIGMOD_LEVEL ;
 int DELAY (int) ;
 int lapic_ipi_raw (int,int) ;
 int lapic_ipi_wait (int) ;
 int panic (char*,int) ;

void
ipi_startup(int apic_id, int vector)
{
 lapic_ipi_raw(APIC_DEST_DESTFLD | APIC_TRIGMOD_LEVEL |
     APIC_LEVEL_ASSERT | APIC_DESTMODE_PHY | APIC_DELMODE_INIT, apic_id);
 lapic_ipi_wait(100);


 lapic_ipi_raw(APIC_DEST_DESTFLD | APIC_TRIGMOD_LEVEL |
     APIC_LEVEL_DEASSERT | APIC_DESTMODE_PHY | APIC_DELMODE_INIT,
     apic_id);

 DELAY(10000);
 lapic_ipi_raw(APIC_DEST_DESTFLD | APIC_TRIGMOD_EDGE |
     APIC_LEVEL_ASSERT | APIC_DESTMODE_PHY | APIC_DELMODE_STARTUP |
     vector, apic_id);
 if (!lapic_ipi_wait(100))
  panic("Failed to deliver first STARTUP IPI to APIC %d",
      apic_id);
 DELAY(200);







 lapic_ipi_raw(APIC_DEST_DESTFLD | APIC_TRIGMOD_EDGE |
     APIC_LEVEL_ASSERT | APIC_DESTMODE_PHY | APIC_DELMODE_STARTUP |
     vector, apic_id);
 if (!lapic_ipi_wait(100))
  panic("Failed to deliver second STARTUP IPI to APIC %d",
      apic_id);

 DELAY(200);
}
