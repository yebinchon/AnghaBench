
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EFFLUSH (int *) ;
 int EFPRINTF (int *,char*,...) ;
 scalar_t__ RSDT_OFFSET ;
 scalar_t__ XSDT_OFFSET ;
 scalar_t__ basl_acpi_base ;
 int errno ;

__attribute__((used)) static int
basl_fwrite_rsdp(FILE *fp)
{
 EFPRINTF(fp, "/*\n");
 EFPRINTF(fp, " * bhyve RSDP template\n");
 EFPRINTF(fp, " */\n");
 EFPRINTF(fp, "[0008]\t\tSignature : \"RSD PTR \"\n");
 EFPRINTF(fp, "[0001]\t\tChecksum : 43\n");
 EFPRINTF(fp, "[0006]\t\tOem ID : \"BHYVE \"\n");
 EFPRINTF(fp, "[0001]\t\tRevision : 02\n");
 EFPRINTF(fp, "[0004]\t\tRSDT Address : %08X\n",
     basl_acpi_base + RSDT_OFFSET);
 EFPRINTF(fp, "[0004]\t\tLength : 00000024\n");
 EFPRINTF(fp, "[0008]\t\tXSDT Address : 00000000%08X\n",
     basl_acpi_base + XSDT_OFFSET);
 EFPRINTF(fp, "[0001]\t\tExtended Checksum : 00\n");
 EFPRINTF(fp, "[0003]\t\tReserved : 000000\n");

 EFFLUSH(fp);

 return (0);

err_exit:
 return (errno);
}
