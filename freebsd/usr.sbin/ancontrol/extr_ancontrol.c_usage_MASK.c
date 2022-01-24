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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(const char *p)
{
	FUNC1(stderr, "usage:  %s -i iface -A (show specified APs)\n", p);
	FUNC1(stderr, "\t%s -i iface -N (show specified SSIDss)\n", p);
	FUNC1(stderr, "\t%s -i iface -S (show NIC status)\n", p);
	FUNC1(stderr, "\t%s -i iface -I (show NIC capabilities)\n", p);
	FUNC1(stderr, "\t%s -i iface -T (show stats counters)\n", p);
	FUNC1(stderr, "\t%s -i iface -C (show current config)\n", p);
	FUNC1(stderr, "\t%s -i iface -R (show RSSI map)\n", p);
	FUNC1(stderr, "\t%s -i iface -t 0-4 (set TX speed)\n", p);
	FUNC1(stderr, "\t%s -i iface -s 0-3 (set power save mode)\n", p);
	FUNC1(stderr, "\t%s -i iface [-v 1-4] -a AP (specify AP)\n", p);
	FUNC1(stderr, "\t%s -i iface -b val (set beacon period)\n", p);
	FUNC1(stderr, "\t%s -i iface [-v 0|1] -d val (set diversity)\n", p);
	FUNC1(stderr, "\t%s -i iface -j val (set netjoin timeout)\n", p);
	FUNC1(stderr, "\t%s -i iface -e 0-4 (enable transmit key)\n", p);
	FUNC1(stderr, "\t%s -i iface [-v 0-8] -k key (set key)\n", p);
	FUNC1(stderr, "\t%s -i iface -K 0-2 (no auth/open/shared secret)\n", p);
	FUNC1(stderr, "\t%s -i iface -W 0-2 (no WEP/full WEP/mixed cell)\n", p);
	FUNC1(stderr, "\t%s -i iface -l val (set station name)\n", p);
	FUNC1(stderr, "\t%s -i iface -m val (set MAC address)\n", p);
	FUNC1(stderr, "\t%s -i iface [-v 1-3] -n SSID "
	    "(specify SSID)\n", p);
	FUNC1(stderr, "\t%s -i iface -o 0|1 (set operating mode)\n", p);
	FUNC1(stderr, "\t%s -i iface -c val (set ad-hoc channel)\n", p);
	FUNC1(stderr, "\t%s -i iface -f val (set frag threshold)\n", p);
	FUNC1(stderr, "\t%s -i iface -r val (set RTS threshold)\n", p);
	FUNC1(stderr, "\t%s -i iface -M 0-15 (set monitor mode)\n", p);
	FUNC1(stderr, "\t%s -i iface -L user (enter LEAP authentication mode)\n", p);
#ifdef ANCACHE
	fprintf(stderr, "\t%s -i iface -Q print signal quality cache\n", p);
	fprintf(stderr, "\t%s -i iface -Z zero out signal cache\n", p);
#endif

	FUNC1(stderr, "\t%s -h (display this message)\n", p);

	FUNC0(1);
}