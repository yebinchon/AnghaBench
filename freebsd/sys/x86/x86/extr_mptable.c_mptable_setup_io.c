
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef int bus_datum ;
struct TYPE_5__ {int bus_type; } ;
struct TYPE_4__ {int mpfb2; } ;


 int IOAPIC_MAX_ID ;
 int MPFB2_IMCR_PRESENT ;
 int M_MPTABLE ;
 int M_WAITOK ;
 int NOBUS ;
 TYPE_2__* busses ;
 int inb (int) ;
 int ioapic_register (int *) ;
 int ** ioapics ;
 TYPE_2__* malloc (int,int ,int ) ;
 TYPE_1__* mpfps ;
 int mptable_count_items () ;
 int mptable_maxbusid ;
 int mptable_parse_apics_and_busses () ;
 int mptable_parse_ints () ;
 int mptable_pci_setup () ;
 int outb (int,int) ;

__attribute__((used)) static int
mptable_setup_io(void)
{
 int i;
 u_char byte;


 mptable_count_items();
 busses = malloc((mptable_maxbusid + 1) * sizeof(bus_datum), M_MPTABLE,
     M_WAITOK);
 for (i = 0; i <= mptable_maxbusid; i++)
  busses[i].bus_type = NOBUS;


 mptable_parse_apics_and_busses();


 mptable_parse_ints();


 for (i = 0; i <= IOAPIC_MAX_ID; i++)
  if (ioapics[i] != ((void*)0))
   ioapic_register(ioapics[i]);


 mptable_pci_setup();


 if (mpfps->mpfb2 & MPFB2_IMCR_PRESENT) {
  outb(0x22, 0x70);
  byte = inb(0x23);
  byte |= 0x01;
  outb(0x23, byte);
 }

 return (0);
}
