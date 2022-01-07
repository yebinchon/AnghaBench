
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int dsdt_line (char*,...) ;

void
dsdt_fixed_ioport(uint16_t iobase, uint16_t length)
{

 dsdt_line("IO (Decode16,");
 dsdt_line("  0x%04X,             // Range Minimum", iobase);
 dsdt_line("  0x%04X,             // Range Maximum", iobase);
 dsdt_line("  0x01,               // Alignment");
 dsdt_line("  0x%02X,               // Length", length);
 dsdt_line("  )");
}
