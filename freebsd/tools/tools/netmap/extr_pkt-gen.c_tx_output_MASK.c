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
struct my_ctrs {int pkts; int bytes; scalar_t__ events; } ;
struct glob_arg {double framing; } ;

/* Variables and functions */
 char* FUNC0 (char*,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  normalize ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 

__attribute__((used)) static void
FUNC2(struct glob_arg *g, struct my_ctrs *cur, double delta, const char *msg)
{
	double bw, raw_bw, pps, abs;
	char b1[40], b2[80], b3[80];
	int size;

	if (cur->pkts == 0) {
		FUNC1("%s nothing.\n", msg);
		return;
	}

	size = (int)(cur->bytes / cur->pkts);

	FUNC1("%s %llu packets %llu bytes %llu events %d bytes each in %.2f seconds.\n",
		msg,
		(unsigned long long)cur->pkts,
		(unsigned long long)cur->bytes,
		(unsigned long long)cur->events, size, delta);
	if (delta == 0)
		delta = 1e-6;
	if (size < 60)		/* correct for min packet size */
		size = 60;
	pps = cur->pkts / delta;
	bw = (8.0 * cur->bytes) / delta;
	raw_bw = (8.0 * cur->bytes + cur->pkts * g->framing) / delta;
	abs = cur->pkts / (double)(cur->events);

	FUNC1("Speed: %spps Bandwidth: %sbps (raw %sbps). Average batch: %.2f pkts\n",
		FUNC0(b1, pps, normalize), FUNC0(b2, bw, normalize), FUNC0(b3, raw_bw, normalize), abs);
}