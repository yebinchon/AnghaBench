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
typedef  int /*<<< orphan*/  uuid_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int u_char ;
struct smbios_table_type1 {int /*<<< orphan*/  uuid; } ;
struct smbios_structure {int dummy; } ;
typedef  int /*<<< orphan*/  hostname ;
typedef  int /*<<< orphan*/  digest ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 int /*<<< orphan*/ * guest_uuid_str ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct smbios_structure*,char const**,char*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ uuid_s_ok ; 
 char* vmname ; 

__attribute__((used)) static int
FUNC9(struct smbios_structure *template_entry,
    const char **template_strings, char *curaddr, char **endaddr,
    uint16_t *n, uint16_t *size)
{
	struct smbios_table_type1 *type1;

	FUNC5(template_entry, template_strings,
	    curaddr, endaddr, n, size);
	type1 = (struct smbios_table_type1 *)curaddr;

	if (guest_uuid_str != NULL) {
		uuid_t		uuid;
		uint32_t	status;

		FUNC8(guest_uuid_str, &uuid, &status);
		if (status != uuid_s_ok)
			return (-1);

		FUNC7(&type1->uuid, &uuid);
	} else {
		MD5_CTX		mdctx;
		u_char		digest[16];
		char		hostname[MAXHOSTNAMELEN];

		/*
		 * Universally unique and yet reproducible are an
		 * oxymoron, however reproducible is desirable in
		 * this case.
		 */
		if (FUNC3(hostname, sizeof(hostname)))
			return (-1);

		FUNC1(&mdctx);
		FUNC2(&mdctx, vmname, FUNC6(vmname));
		FUNC2(&mdctx, hostname, sizeof(hostname));
		FUNC0(digest, &mdctx);

		/*
		 * Set the variant and version number.
		 */
		digest[6] &= 0x0F;
		digest[6] |= 0x30;	/* version 3 */
		digest[8] &= 0x3F;
		digest[8] |= 0x80;

		FUNC4(&type1->uuid, digest, sizeof (digest));
	}

	return (0);
}