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
typedef  int u8 ;
typedef  int u32 ;
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (int*,int,char*,int) ; 
 int FUNC5 (int*,int,char*,int) ; 
 int FUNC6 (int*,int,char*,char*) ; 

__attribute__((used)) static u32 FUNC7(struct ecore_hwfn *p_hwfn,
								  u32 *dump_buf,
								  bool dump,
								  const char *name,
								  u32 addr,
								  u32 len,
								  u32 bit_width,
								  bool packed,
								  const char *mem_group,
								  bool is_storm,
								  char storm_letter)
{
	u8 num_params = 3;
	u32 offset = 0;
	char buf[64];

	if (!len)
		FUNC0(p_hwfn, true, "Unexpected GRC Dump error: dumped memory size must be non-zero\n");

	if (bit_width)
		num_params++;
	if (packed)
		num_params++;

	/* Dump section header */
	offset += FUNC5(dump_buf + offset, dump, "grc_mem", num_params);

	if (name) {

		/* Dump name */
		if (is_storm) {
			FUNC2(buf, "?STORM_");
			buf[0] = storm_letter;
			FUNC2(buf + FUNC3(buf), name);
		}
		else {
			FUNC2(buf, name);
		}

		offset += FUNC6(dump_buf + offset, dump, "name", buf);
	}
	else {

		/* Dump address */
		u32 addr_in_bytes = FUNC1(addr);

		offset += FUNC4(dump_buf + offset, dump, "addr", addr_in_bytes);
	}

	/* Dump len */
	offset += FUNC4(dump_buf + offset, dump, "len", len);

	/* Dump bit width */
	if (bit_width)
		offset += FUNC4(dump_buf + offset, dump, "width", bit_width);

	/* Dump packed */
	if (packed)
		offset += FUNC4(dump_buf + offset, dump, "packed", 1);

	/* Dump reg type */
	if (is_storm) {
		FUNC2(buf, "?STORM_");
		buf[0] = storm_letter;
		FUNC2(buf + FUNC3(buf), mem_group);
	}
	else {
		FUNC2(buf, mem_group);
	}

	offset += FUNC6(dump_buf + offset, dump, "type", buf);

	return offset;
}