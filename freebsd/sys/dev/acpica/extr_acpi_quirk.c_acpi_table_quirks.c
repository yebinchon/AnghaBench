
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xsdt ;
struct acpi_q_rule {char* sig; } ;
struct acpi_q_entry {int quirks; struct acpi_q_rule* match; } ;
typedef int fadt ;
typedef int dsdt ;
typedef int ACPI_TABLE_HEADER ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_NAMESEG_SIZE ;
 char* ACPI_SIG_DSDT ;
 char* ACPI_SIG_FADT ;
 char* ACPI_SIG_XSDT ;
 int AcpiGetTableHeader (char*,int ,int *) ;
 int FALSE ;
 int KASSERT (int ,char*) ;
 int TRUE ;
 int acpi_machdep_quirks (int*) ;
 struct acpi_q_entry* acpi_quirks_table ;
 int aq_match_header (int *,struct acpi_q_rule const*) ;
 int bzero (int *,int) ;
 int panic (char*) ;
 int strncmp (char*,char*,int ) ;

int
acpi_table_quirks(int *quirks)
{
    const struct acpi_q_entry *entry;
    const struct acpi_q_rule *match;
    ACPI_TABLE_HEADER fadt, dsdt, xsdt, *hdr;
    int done;


    KASSERT(quirks != ((void*)0), ("acpi quirks ptr is NULL"));
    acpi_machdep_quirks(quirks);

    if (ACPI_FAILURE(AcpiGetTableHeader(ACPI_SIG_FADT, 0, &fadt)))
 bzero(&fadt, sizeof(fadt));
    if (ACPI_FAILURE(AcpiGetTableHeader(ACPI_SIG_DSDT, 0, &dsdt)))
 bzero(&dsdt, sizeof(dsdt));
    if (ACPI_FAILURE(AcpiGetTableHeader(ACPI_SIG_XSDT, 0, &xsdt)))
 bzero(&xsdt, sizeof(xsdt));


    for (entry = acpi_quirks_table; entry->match; entry++) {
 done = TRUE;
 for (match = entry->match; match->sig[0] != '\0'; match++) {
     if (!strncmp(match->sig, "FADT", ACPI_NAMESEG_SIZE))
  hdr = &fadt;
     else if (!strncmp(match->sig, ACPI_SIG_DSDT, ACPI_NAMESEG_SIZE))
  hdr = &dsdt;
     else if (!strncmp(match->sig, ACPI_SIG_XSDT, ACPI_NAMESEG_SIZE))
  hdr = &xsdt;
     else
  panic("invalid quirk header\n");


     if (aq_match_header(hdr, match) == FALSE) {
  done = FALSE;
  break;
     }
 }


 if (done) {
     *quirks = entry->quirks;
     break;
 }
    }

    return (0);
}
