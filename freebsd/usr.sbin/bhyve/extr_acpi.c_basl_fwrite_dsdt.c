
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EFFLUSH (int *) ;
 scalar_t__ dsdt_error ;
 int dsdt_fixed_mem32 (int,int) ;
 int * dsdt_fp ;
 int dsdt_indent (int) ;
 scalar_t__ dsdt_indent_level ;
 int dsdt_line (char*) ;
 int dsdt_unindent (int) ;
 int errno ;
 int pci_write_dsdt () ;

__attribute__((used)) static int
basl_fwrite_dsdt(FILE *fp)
{
 dsdt_fp = fp;
 dsdt_error = 0;
 dsdt_indent_level = 0;

 dsdt_line("/*");
 dsdt_line(" * bhyve DSDT template");
 dsdt_line(" */");
 dsdt_line("DefinitionBlock (\"bhyve_dsdt.aml\", \"DSDT\", 2,"
   "\"BHYVE \", \"BVDSDT  \", 0x00000001)");
 dsdt_line("{");
 dsdt_line("  Name (_S5, Package ()");
 dsdt_line("  {");
 dsdt_line("      0x05,");
 dsdt_line("      Zero,");
 dsdt_line("  })");

 pci_write_dsdt();

 dsdt_line("");
 dsdt_line("  Scope (_SB.PC00)");
 dsdt_line("  {");
 dsdt_line("    Device (HPET)");
 dsdt_line("    {");
 dsdt_line("      Name (_HID, EISAID(\"PNP0103\"))");
 dsdt_line("      Name (_UID, 0)");
 dsdt_line("      Name (_CRS, ResourceTemplate ()");
 dsdt_line("      {");
 dsdt_indent(4);
 dsdt_fixed_mem32(0xFED00000, 0x400);
 dsdt_unindent(4);
 dsdt_line("      })");
 dsdt_line("    }");
 dsdt_line("  }");
 dsdt_line("}");

 if (dsdt_error != 0)
  return (dsdt_error);

 EFFLUSH(fp);

 return (0);

err_exit:
 return (errno);
}
