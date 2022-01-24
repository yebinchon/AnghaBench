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
typedef  int u_int ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_id ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(u_int data)
{
	switch (data) {
	case 0x0:
	case 0x40:
	default:
		break;
	case 0x1:
		FUNC2("Instruction TLB: 4 KB pages, 4-way set associative, 32 entries\n");
		break;
	case 0x2:
		FUNC2("Instruction TLB: 4 MB pages, fully associative, 2 entries\n");
		break;
	case 0x3:
		FUNC2("Data TLB: 4 KB pages, 4-way set associative, 64 entries\n");
		break;
	case 0x4:
		FUNC2("Data TLB: 4 MB Pages, 4-way set associative, 8 entries\n");
		break;
	case 0x6:
		FUNC2("1st-level instruction cache: 8 KB, 4-way set associative, 32 byte line size\n");
		break;
	case 0x8:
		FUNC2("1st-level instruction cache: 16 KB, 4-way set associative, 32 byte line size\n");
		break;
	case 0x9:
		FUNC2("1st-level instruction cache: 32 KB, 4-way set associative, 64 byte line size\n");
		break;
	case 0xa:
		FUNC2("1st-level data cache: 8 KB, 2-way set associative, 32 byte line size\n");
		break;
	case 0xb:
		FUNC2("Instruction TLB: 4 MByte pages, 4-way set associative, 4 entries\n");
		break;
	case 0xc:
		FUNC2("1st-level data cache: 16 KB, 4-way set associative, 32 byte line size\n");
		break;
	case 0xd:
		FUNC2("1st-level data cache: 16 KBytes, 4-way set associative, 64 byte line size");
		break;
	case 0xe:
		FUNC2("1st-level data cache: 24 KBytes, 6-way set associative, 64 byte line size\n");
		break;
	case 0x1d:
		FUNC2("2nd-level cache: 128 KBytes, 2-way set associative, 64 byte line size\n");
		break;
	case 0x21:
		FUNC2("2nd-level cache: 256 KBytes, 8-way set associative, 64 byte line size\n");
		break;
	case 0x22:
		FUNC2("3rd-level cache: 512 KB, 4-way set associative, sectored cache, 64 byte line size\n");
		break;
	case 0x23:
		FUNC2("3rd-level cache: 1 MB, 8-way set associative, sectored cache, 64 byte line size\n");
		break;
	case 0x24:
		FUNC2("2nd-level cache: 1 MBytes, 16-way set associative, 64 byte line size\n");
		break;
	case 0x25:
		FUNC2("3rd-level cache: 2 MB, 8-way set associative, sectored cache, 64 byte line size\n");
		break;
	case 0x29:
		FUNC2("3rd-level cache: 4 MB, 8-way set associative, sectored cache, 64 byte line size\n");
		break;
	case 0x2c:
		FUNC2("1st-level data cache: 32 KB, 8-way set associative, 64 byte line size\n");
		break;
	case 0x30:
		FUNC2("1st-level instruction cache: 32 KB, 8-way set associative, 64 byte line size\n");
		break;
	case 0x39: /* De-listed in SDM rev. 54 */
		FUNC2("2nd-level cache: 128 KB, 4-way set associative, sectored cache, 64 byte line size\n");
		break;
	case 0x3b: /* De-listed in SDM rev. 54 */
		FUNC2("2nd-level cache: 128 KB, 2-way set associative, sectored cache, 64 byte line size\n");
		break;
	case 0x3c: /* De-listed in SDM rev. 54 */
		FUNC2("2nd-level cache: 256 KB, 4-way set associative, sectored cache, 64 byte line size\n");
		break;
	case 0x41:
		FUNC2("2nd-level cache: 128 KB, 4-way set associative, 32 byte line size\n");
		break;
	case 0x42:
		FUNC2("2nd-level cache: 256 KB, 4-way set associative, 32 byte line size\n");
		break;
	case 0x43:
		FUNC2("2nd-level cache: 512 KB, 4-way set associative, 32 byte line size\n");
		break;
	case 0x44:
		FUNC2("2nd-level cache: 1 MB, 4-way set associative, 32 byte line size\n");
		break;
	case 0x45:
		FUNC2("2nd-level cache: 2 MB, 4-way set associative, 32 byte line size\n");
		break;
	case 0x46:
		FUNC2("3rd-level cache: 4 MB, 4-way set associative, 64 byte line size\n");
		break;
	case 0x47:
		FUNC2("3rd-level cache: 8 MB, 8-way set associative, 64 byte line size\n");
		break;
	case 0x48:
		FUNC2("2nd-level cache: 3MByte, 12-way set associative, 64 byte line size\n");
		break;
	case 0x49:
		if (FUNC0(cpu_id) == 0xf &&
		    FUNC1(cpu_id) == 0x6)
			FUNC2("3rd-level cache: 4MB, 16-way set associative, 64-byte line size\n");
		else
			FUNC2("2nd-level cache: 4 MByte, 16-way set associative, 64 byte line size");
		break;
	case 0x4a:
		FUNC2("3rd-level cache: 6MByte, 12-way set associative, 64 byte line size\n");
		break;
	case 0x4b:
		FUNC2("3rd-level cache: 8MByte, 16-way set associative, 64 byte line size\n");
		break;
	case 0x4c:
		FUNC2("3rd-level cache: 12MByte, 12-way set associative, 64 byte line size\n");
		break;
	case 0x4d:
		FUNC2("3rd-level cache: 16MByte, 16-way set associative, 64 byte line size\n");
		break;
	case 0x4e:
		FUNC2("2nd-level cache: 6MByte, 24-way set associative, 64 byte line size\n");
		break;
	case 0x4f:
		FUNC2("Instruction TLB: 4 KByte pages, 32 entries\n");
		break;
	case 0x50:
		FUNC2("Instruction TLB: 4 KB, 2 MB or 4 MB pages, fully associative, 64 entries\n");
		break;
	case 0x51:
		FUNC2("Instruction TLB: 4 KB, 2 MB or 4 MB pages, fully associative, 128 entries\n");
		break;
	case 0x52:
		FUNC2("Instruction TLB: 4 KB, 2 MB or 4 MB pages, fully associative, 256 entries\n");
		break;
	case 0x55:
		FUNC2("Instruction TLB: 2-MByte or 4-MByte pages, fully associative, 7 entries\n");
		break;
	case 0x56:
		FUNC2("Data TLB0: 4 MByte pages, 4-way set associative, 16 entries\n");
		break;
	case 0x57:
		FUNC2("Data TLB0: 4 KByte pages, 4-way associative, 16 entries\n");
		break;
	case 0x59:
		FUNC2("Data TLB0: 4 KByte pages, fully associative, 16 entries\n");
		break;
	case 0x5a:
		FUNC2("Data TLB0: 2-MByte or 4 MByte pages, 4-way set associative, 32 entries\n");
		break;
	case 0x5b:
		FUNC2("Data TLB: 4 KB or 4 MB pages, fully associative, 64 entries\n");
		break;
	case 0x5c:
		FUNC2("Data TLB: 4 KB or 4 MB pages, fully associative, 128 entries\n");
		break;
	case 0x5d:
		FUNC2("Data TLB: 4 KB or 4 MB pages, fully associative, 256 entries\n");
		break;
	case 0x60:
		FUNC2("1st-level data cache: 16 KB, 8-way set associative, sectored cache, 64 byte line size\n");
		break;
	case 0x61:
		FUNC2("Instruction TLB: 4 KByte pages, fully associative, 48 entries\n");
		break;
	case 0x63:
		FUNC2("Data TLB: 2 MByte or 4 MByte pages, 4-way set associative, 32 entries and a separate array with 1 GByte pages, 4-way set associative, 4 entries\n");
		break;
	case 0x64:
		FUNC2("Data TLB: 4 KBytes pages, 4-way set associative, 512 entries\n");
		break;
	case 0x66:
		FUNC2("1st-level data cache: 8 KB, 4-way set associative, sectored cache, 64 byte line size\n");
		break;
	case 0x67:
		FUNC2("1st-level data cache: 16 KB, 4-way set associative, sectored cache, 64 byte line size\n");
		break;
	case 0x68:
		FUNC2("1st-level data cache: 32 KB, 4 way set associative, sectored cache, 64 byte line size\n");
		break;
	case 0x6a:
		FUNC2("uTLB: 4KByte pages, 8-way set associative, 64 entries\n");
		break;
	case 0x6b:
		FUNC2("DTLB: 4KByte pages, 8-way set associative, 256 entries\n");
		break;
	case 0x6c:
		FUNC2("DTLB: 2M/4M pages, 8-way set associative, 128 entries\n");
		break;
	case 0x6d:
		FUNC2("DTLB: 1 GByte pages, fully associative, 16 entries\n");
		break;
	case 0x70:
		FUNC2("Trace cache: 12K-uops, 8-way set associative\n");
		break;
	case 0x71:
		FUNC2("Trace cache: 16K-uops, 8-way set associative\n");
		break;
	case 0x72:
		FUNC2("Trace cache: 32K-uops, 8-way set associative\n");
		break;
	case 0x76:
		FUNC2("Instruction TLB: 2M/4M pages, fully associative, 8 entries\n");
		break;
	case 0x78:
		FUNC2("2nd-level cache: 1 MB, 4-way set associative, 64-byte line size\n");
		break;
	case 0x79:
		FUNC2("2nd-level cache: 128 KB, 8-way set associative, sectored cache, 64 byte line size\n");
		break;
	case 0x7a:
		FUNC2("2nd-level cache: 256 KB, 8-way set associative, sectored cache, 64 byte line size\n");
		break;
	case 0x7b:
		FUNC2("2nd-level cache: 512 KB, 8-way set associative, sectored cache, 64 byte line size\n");
		break;
	case 0x7c:
		FUNC2("2nd-level cache: 1 MB, 8-way set associative, sectored cache, 64 byte line size\n");
		break;
	case 0x7d:
		FUNC2("2nd-level cache: 2-MB, 8-way set associative, 64-byte line size\n");
		break;
	case 0x7f:
		FUNC2("2nd-level cache: 512-KB, 2-way set associative, 64-byte line size\n");
		break;
	case 0x80:
		FUNC2("2nd-level cache: 512 KByte, 8-way set associative, 64-byte line size\n");
		break;
	case 0x82:
		FUNC2("2nd-level cache: 256 KB, 8-way set associative, 32 byte line size\n");
		break;
	case 0x83:
		FUNC2("2nd-level cache: 512 KB, 8-way set associative, 32 byte line size\n");
		break;
	case 0x84:
		FUNC2("2nd-level cache: 1 MB, 8-way set associative, 32 byte line size\n");
		break;
	case 0x85:
		FUNC2("2nd-level cache: 2 MB, 8-way set associative, 32 byte line size\n");
		break;
	case 0x86:
		FUNC2("2nd-level cache: 512 KB, 4-way set associative, 64 byte line size\n");
		break;
	case 0x87:
		FUNC2("2nd-level cache: 1 MB, 8-way set associative, 64 byte line size\n");
		break;
	case 0xa0:
		FUNC2("DTLB: 4k pages, fully associative, 32 entries\n");
		break;
	case 0xb0:
		FUNC2("Instruction TLB: 4 KB Pages, 4-way set associative, 128 entries\n");
		break;
	case 0xb1:
		FUNC2("Instruction TLB: 2M pages, 4-way, 8 entries or 4M pages, 4-way, 4 entries\n");
		break;
	case 0xb2:
		FUNC2("Instruction TLB: 4KByte pages, 4-way set associative, 64 entries\n");
		break;
	case 0xb3:
		FUNC2("Data TLB: 4 KB Pages, 4-way set associative, 128 entries\n");
		break;
	case 0xb4:
		FUNC2("Data TLB1: 4 KByte pages, 4-way associative, 256 entries\n");
		break;
	case 0xb5:
		FUNC2("Instruction TLB: 4KByte pages, 8-way set associative, 64 entries\n");
		break;
	case 0xb6:
		FUNC2("Instruction TLB: 4KByte pages, 8-way set associative, 128 entries\n");
		break;
	case 0xba:
		FUNC2("Data TLB1: 4 KByte pages, 4-way associative, 64 entries\n");
		break;
	case 0xc0:
		FUNC2("Data TLB: 4 KByte and 4 MByte pages, 4-way associative, 8 entries\n");
		break;
	case 0xc1:
		FUNC2("Shared 2nd-Level TLB: 4 KByte/2MByte pages, 8-way associative, 1024 entries\n");
		break;
	case 0xc2:
		FUNC2("DTLB: 4 KByte/2 MByte pages, 4-way associative, 16 entries\n");
		break;
	case 0xc3:
		FUNC2("Shared 2nd-Level TLB: 4 KByte /2 MByte pages, 6-way associative, 1536 entries. Also 1GBbyte pages, 4-way, 16 entries\n");
		break;
	case 0xc4:
		FUNC2("DTLB: 2M/4M Byte pages, 4-way associative, 32 entries\n");
		break;
	case 0xca:
		FUNC2("Shared 2nd-Level TLB: 4 KByte pages, 4-way associative, 512 entries\n");
		break;
	case 0xd0:
		FUNC2("3rd-level cache: 512 KByte, 4-way set associative, 64 byte line size\n");
		break;
	case 0xd1:
		FUNC2("3rd-level cache: 1 MByte, 4-way set associative, 64 byte line size\n");
		break;
	case 0xd2:
		FUNC2("3rd-level cache: 2 MByte, 4-way set associative, 64 byte line size\n");
		break;
	case 0xd6:
		FUNC2("3rd-level cache: 1 MByte, 8-way set associative, 64 byte line size\n");
		break;
	case 0xd7:
		FUNC2("3rd-level cache: 2 MByte, 8-way set associative, 64 byte line size\n");
		break;
	case 0xd8:
		FUNC2("3rd-level cache: 4 MByte, 8-way set associative, 64 byte line size\n");
		break;
	case 0xdc:
		FUNC2("3rd-level cache: 1.5 MByte, 12-way set associative, 64 byte line size\n");
		break;
	case 0xdd:
		FUNC2("3rd-level cache: 3 MByte, 12-way set associative, 64 byte line size\n");
		break;
	case 0xde:
		FUNC2("3rd-level cache: 6 MByte, 12-way set associative, 64 byte line size\n");
		break;
	case 0xe2:
		FUNC2("3rd-level cache: 2 MByte, 16-way set associative, 64 byte line size\n");
		break;
	case 0xe3:
		FUNC2("3rd-level cache: 4 MByte, 16-way set associative, 64 byte line size\n");
		break;
	case 0xe4:
		FUNC2("3rd-level cache: 8 MByte, 16-way set associative, 64 byte line size\n");
		break;
	case 0xea:
		FUNC2("3rd-level cache: 12MByte, 24-way set associative, 64 byte line size\n");
		break;
	case 0xeb:
		FUNC2("3rd-level cache: 18MByte, 24-way set associative, 64 byte line size\n");
		break;
	case 0xec:
		FUNC2("3rd-level cache: 24MByte, 24-way set associative, 64 byte line size\n");
		break;
	case 0xf0:
		FUNC2("64-Byte prefetching\n");
		break;
	case 0xf1:
		FUNC2("128-Byte prefetching\n");
		break;
	}
}