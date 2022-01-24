#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct sbuf {int dummy; } ;
struct TYPE_2__ {int cim_la_size; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int F_UPDBGLACAPTPCONLY ; 
 int /*<<< orphan*/  FUNC0 (struct sbuf*,char*,...) ; 

__attribute__((used)) static void
FUNC1(struct adapter *sc, struct sbuf *sb, uint32_t *buf, uint32_t cfg)
{
	uint32_t *p;

	FUNC0(sb, "Status   Data      PC%s",
	    cfg & F_UPDBGLACAPTPCONLY ? "" :
	    "     LS0Stat  LS0Addr             LS0Data");

	for (p = buf; p <= &buf[sc->params.cim_la_size - 8]; p += 8) {
		if (cfg & F_UPDBGLACAPTPCONLY) {
			FUNC0(sb, "\n  %02x   %08x %08x", p[5] & 0xff,
			    p[6], p[7]);
			FUNC0(sb, "\n  %02x   %02x%06x %02x%06x",
			    (p[3] >> 8) & 0xff, p[3] & 0xff, p[4] >> 8,
			    p[4] & 0xff, p[5] >> 8);
			FUNC0(sb, "\n  %02x   %x%07x %x%07x",
			    (p[0] >> 4) & 0xff, p[0] & 0xf, p[1] >> 4,
			    p[1] & 0xf, p[2] >> 4);
		} else {
			FUNC0(sb,
			    "\n  %02x   %x%07x %x%07x %08x %08x "
			    "%08x%08x%08x%08x",
			    (p[0] >> 4) & 0xff, p[0] & 0xf, p[1] >> 4,
			    p[1] & 0xf, p[2] >> 4, p[2] & 0xf, p[3], p[4], p[5],
			    p[6], p[7]);
		}
	}
}