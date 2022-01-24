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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u_char ;
struct g_llvm_label {int ll_sector; int ll_offset; char* ll_uuid; scalar_t__ ll_pestart; scalar_t__ ll_size; void* ll_crc; scalar_t__ ll_md_size; scalar_t__ ll_md_offset; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,char*,int) ; 
 void* FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC5(const u_char *data, struct g_llvm_label *ll, int sector)
{
	uint64_t off;
	char *uuid;

	/* Magic string */
	if (FUNC1("LABELONE", data , 8) != 0)
		return (EINVAL);

	/* We only support LVM2 text format */
	if (FUNC1("LVM2 001", data + 24, 8) != 0) {
		FUNC0(0, "Unsupported LVM format");
		return (EINVAL);
	}

	ll->ll_sector = FUNC4(data + 8);
	ll->ll_crc = FUNC3(data + 16);
	ll->ll_offset = FUNC3(data + 20);

	if (ll->ll_sector != sector) {
		FUNC0(0, "Expected sector %ju, found at %d",
		    ll->ll_sector, sector);
		return (EINVAL);
	}

	off = ll->ll_offset;
	/*
	 * convert the binary uuid to string format, the format is
	 * xxxxxx-xxxx-xxxx-xxxx-xxxx-xxxx-xxxxxx (6-4-4-4-4-4-6)
	 */
	uuid = ll->ll_uuid;
	FUNC2(data + off, uuid, 6);
	off += 6;
	uuid += 6;
	*uuid++ = '-';
	for (int i = 0; i < 5; i++) {
		FUNC2(data + off, uuid, 4);
		off += 4;
		uuid += 4;
		*uuid++ = '-';
	}
	FUNC2(data + off, uuid, 6);
	off += 6;
	uuid += 6;
	*uuid++ = '\0';

	ll->ll_size = FUNC4(data + off);
	off += 8;
	ll->ll_pestart = FUNC4(data + off);
	off += 16;

	/* Only one data section is supported */
	if (FUNC4(data + off) != 0) {
		FUNC0(0, "Only one data section supported");
		return (EINVAL);
	}

	off += 16;
	ll->ll_md_offset = FUNC4(data + off);
	off += 8;
	ll->ll_md_size = FUNC4(data + off);
	off += 8;

	FUNC0(1, "LVM metadata: offset=%ju, size=%ju", ll->ll_md_offset,
	    ll->ll_md_size);

	/* Only one data section is supported */
	if (FUNC4(data + off) != 0) {
		FUNC0(0, "Only one metadata section supported");
		return (EINVAL);
	}

	FUNC0(2, "label uuid=%s", ll->ll_uuid);
	FUNC0(2, "sector=%ju, crc=%u, offset=%u, size=%ju, pestart=%ju",
	    ll->ll_sector, ll->ll_crc, ll->ll_offset, ll->ll_size,
	    ll->ll_pestart);

	return (0);
}