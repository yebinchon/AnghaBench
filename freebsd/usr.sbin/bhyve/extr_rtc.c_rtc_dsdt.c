
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IO_RTC ;
 int dsdt_fixed_ioport (int ,int) ;
 int dsdt_fixed_irq (int) ;
 int dsdt_indent (int) ;
 int dsdt_line (char*) ;
 int dsdt_unindent (int) ;

__attribute__((used)) static void
rtc_dsdt(void)
{

 dsdt_line("");
 dsdt_line("Device (RTC)");
 dsdt_line("{");
 dsdt_line("  Name (_HID, EisaId (\"PNP0B00\"))");
 dsdt_line("  Name (_CRS, ResourceTemplate ()");
 dsdt_line("  {");
 dsdt_indent(2);
 dsdt_fixed_ioport(IO_RTC, 2);
 dsdt_fixed_irq(8);
 dsdt_unindent(2);
 dsdt_line("  })");
 dsdt_line("}");
}
