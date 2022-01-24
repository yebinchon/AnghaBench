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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ u_int32_t ;
struct smbios_eps {int length; scalar_t__ structure_table_address; int structure_table_length; int /*<<< orphan*/  number_structures; } ;
struct ipmi_get_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMBIOS_LEN ; 
 int /*<<< orphan*/  SMBIOS_OFF ; 
 int /*<<< orphan*/  SMBIOS_SIG ; 
 int /*<<< orphan*/  SMBIOS_START ; 
 int /*<<< orphan*/  SMBIOS_STEP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipmi_get_info*,int) ; 
 void* FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct smbios_eps*) ; 
 int /*<<< orphan*/  smbios_ipmi_info ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ipmi_get_info*) ; 

__attribute__((used)) static void
FUNC6(struct ipmi_get_info *info)
{
	struct smbios_eps *header;
	void *table;
	u_int32_t addr;

	FUNC1(info, sizeof(struct ipmi_get_info));

	/* Find the SMBIOS table header. */
	addr = FUNC0(SMBIOS_START, SMBIOS_SIG, SMBIOS_LEN,
			      SMBIOS_STEP, SMBIOS_OFF);
	if (addr == 0)
		return;

	/*
	 * Map the header.  We first map a fixed size to get the actual
	 * length and then map it a second time with the actual length so
	 * we can verify the checksum.
	 */
	header = FUNC2(addr, sizeof(struct smbios_eps));
	table = FUNC2(addr, header->length);
	FUNC3((vm_offset_t)header, sizeof(struct smbios_eps));
	header = table;
	if (FUNC4(header) != 0) {
		FUNC3((vm_offset_t)header, header->length);
		return;
	}

	/* Now map the actual table and walk it looking for an IPMI entry. */
	table = FUNC2(header->structure_table_address,
	    header->structure_table_length);
	FUNC5(table, header->number_structures, smbios_ipmi_info,
	    info);

	/* Unmap everything. */
	FUNC3((vm_offset_t)table, header->structure_table_length);
	FUNC3((vm_offset_t)header, header->length);
}