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
typedef  int u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(u_char *p, int len, const char *type)
{
	static const char *un_name[] =
	{"512b", "2Kb", "8Kb", "32Kb", "128Kb", "512Kb", "2Mb", "reserved"};
	static const char *speed[] =
	{"No speed", "250nS", "200nS", "150nS",
	"100nS", "Reserved", "Reserved"};
	static const char *dev[] =
	{"No device", "Mask ROM", "OTPROM", "UV EPROM",
	 "EEPROM", "FLASH EEPROM", "SRAM", "DRAM",
	 "Reserved", "Reserved", "Reserved", "Reserved",
	 "Reserved", "Function specific", "Extended",
	"Reserved"};
	int     count = 0;

	while (*p != 0xFF && len > 0) {
		u_char x;

		x = *p++;
		len -= 2;
		if (count++ == 0)
			FUNC1("\t%s memory device information:\n", type);
		FUNC1("\t\tDevice number %d, type %s, WPS = %s\n",
		    count, dev[x >> 4], (x & 0x8) ? "ON" : "OFF");
		if ((x & 7) == 7) {
			len--;
			if (*p) {
				FUNC1("\t\t");
				FUNC0(*p, 0);
				while (*p & 0x80) {
					p++;
					len--;
				}
			}
			p++;
		} else
			FUNC1("\t\tSpeed = %s", speed[x & 7]);
		FUNC1(", Memory block size = %s, %d units\n",
		    un_name[*p & 7], (*p >> 3) + 1);
		p++;
	}
}