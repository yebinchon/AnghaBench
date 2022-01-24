#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  xsdt ;
struct acpi_q_rule {char* sig; } ;
struct acpi_q_entry {int quirks; struct acpi_q_rule* match; } ;
typedef  int /*<<< orphan*/  fadt ;
typedef  int /*<<< orphan*/  dsdt ;
typedef  int /*<<< orphan*/  ACPI_TABLE_HEADER ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_NAMESEG_SIZE ; 
 char* ACPI_SIG_DSDT ; 
 char* ACPI_SIG_FADT ; 
 char* ACPI_SIG_XSDT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 struct acpi_q_entry* acpi_quirks_table ; 
 int FUNC4 (int /*<<< orphan*/ *,struct acpi_q_rule const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 

int
FUNC8(int *quirks)
{
    const struct acpi_q_entry *entry;
    const struct acpi_q_rule *match;
    ACPI_TABLE_HEADER fadt, dsdt, xsdt, *hdr;
    int done;

    /* First, allow the machdep system to set its idea of quirks. */
    FUNC2(quirks != NULL, ("acpi quirks ptr is NULL"));
    FUNC3(quirks);

    if (FUNC0(FUNC1(ACPI_SIG_FADT, 0, &fadt)))
	FUNC5(&fadt, sizeof(fadt));
    if (FUNC0(FUNC1(ACPI_SIG_DSDT, 0, &dsdt)))
	FUNC5(&dsdt, sizeof(dsdt));
    if (FUNC0(FUNC1(ACPI_SIG_XSDT, 0, &xsdt)))
	FUNC5(&xsdt, sizeof(xsdt));

    /* Then, override the quirks with any matched from table signatures. */
    for (entry = acpi_quirks_table; entry->match; entry++) {
	done = TRUE;
	for (match = entry->match; match->sig[0] != '\0'; match++) {
	    if (!FUNC7(match->sig, "FADT", ACPI_NAMESEG_SIZE))
		hdr = &fadt;
	    else if (!FUNC7(match->sig, ACPI_SIG_DSDT, ACPI_NAMESEG_SIZE))
		hdr = &dsdt;
	    else if (!FUNC7(match->sig, ACPI_SIG_XSDT, ACPI_NAMESEG_SIZE))
		hdr = &xsdt;
	    else
		FUNC6("invalid quirk header\n");

	    /* If we don't match any, skip to the next entry. */
	    if (FUNC4(hdr, match) == FALSE) {
		done = FALSE;
		break;
	    }
	}

	/* If all entries matched, update the quirks and return. */
	if (done) {
	    *quirks = entry->quirks;
	    break;
	}
    }

    return (0);
}