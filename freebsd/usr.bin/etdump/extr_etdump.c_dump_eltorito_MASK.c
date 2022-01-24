#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct outputter {int /*<<< orphan*/  (* output_entry ) (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* output_image ) (int /*<<< orphan*/ *,char const*,TYPE_1__*) ;} ;
typedef  int daddr_t ;
struct TYPE_3__ {scalar_t__* boot_record_indicator; int /*<<< orphan*/  boot_catalog_pointer; int /*<<< orphan*/  boot_system_identifier; int /*<<< orphan*/  identifier; } ;
typedef  TYPE_1__ boot_volume_descriptor ;
typedef  int /*<<< orphan*/  boot_catalog_section_entry ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t ET_BOOT_ENTRY_SIZE ; 
 int /*<<< orphan*/  ET_ID ; 
 scalar_t__ ET_SECTION_HEADER_LAST ; 
 scalar_t__ ET_SECTION_HEADER_MORE ; 
 int ISO_DEFAULT_BLOCK_SIZE ; 
 scalar_t__ ISO_VOLUME_DESCRIPTOR_BOOT ; 
 int /*<<< orphan*/  ISO_VOLUME_DESCRIPTOR_STANDARD_ID ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,size_t,int /*<<< orphan*/ *,char const*,struct outputter*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 

__attribute__((used)) static void
FUNC9(FILE *iso, const char *filename, FILE *outfile,
    struct outputter *outputter)
{
	char buffer[ISO_DEFAULT_BLOCK_SIZE], *entry;
	boot_volume_descriptor *bvd;
	daddr_t boot_catalog;
	size_t offset;
	int entry_count;

	if (FUNC5(iso, 17, buffer) != 0)
		FUNC2(1, "failed to read from image");
	
	bvd = (boot_volume_descriptor *)buffer;
	if (FUNC4(bvd->identifier, ISO_VOLUME_DESCRIPTOR_STANDARD_ID, 5) != 0)
		FUNC8("%s: not a valid ISO", filename);
	if (bvd->boot_record_indicator[0] != ISO_VOLUME_DESCRIPTOR_BOOT)
		FUNC8("%s: not an El Torito bootable ISO", filename);
	if (FUNC4(bvd->boot_system_identifier, ET_ID, 23) != 0)
		FUNC8("%s: not an El Torito bootable ISO", filename);

	boot_catalog = FUNC3(bvd->boot_catalog_pointer);

	if (FUNC5(iso, boot_catalog, buffer) != 0)
		FUNC2(1, "failed to read from image");
	
	entry = buffer;
	offset = 0;

	if (!FUNC0(entry))
		FUNC8("%s: boot catalog checksum is invalid", filename);
	
	if (outputter->output_image != NULL)
		outputter->output_image(outfile, filename, bvd);

	offset += ET_BOOT_ENTRY_SIZE;
	entry = &buffer[offset];
	if (outputter->output_entry != NULL)
		outputter->output_entry(outfile, filename,
		    (boot_catalog_section_entry *)entry, 0, true);

	offset += ET_BOOT_ENTRY_SIZE;

	while (offset < ISO_DEFAULT_BLOCK_SIZE) {
		entry = &buffer[offset];

		if ((uint8_t)entry[0] != ET_SECTION_HEADER_MORE &&
		    (uint8_t)entry[0] != ET_SECTION_HEADER_LAST)
			break;

		entry_count = FUNC1(buffer, offset, outfile, filename,
		    outputter);

		offset += entry_count * ET_BOOT_ENTRY_SIZE;
	}
}