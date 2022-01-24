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
struct safe_stats {int st_ibytes; int st_ipackets; int st_obytes; int st_opackets; int st_invalid; int st_badsession; int st_badflags; int st_nodesc; int st_badalg; int st_ringfull; int st_peoperr; int st_dmaerr; int st_bypasstoobig; int st_skipmismatch; int st_lenmismatch; int st_coffmisaligned; int st_cofftoobig; int st_iovmisaligned; int st_iovnotuniform; int st_noicvcopy; int st_unaligned; int st_notuniform; int st_nomap; int st_noload; int st_nomcl; int st_nombuf; int st_maxqchip; int st_rng; int st_rngalarm; } ;
typedef  int /*<<< orphan*/  stats ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,...) ; 
 scalar_t__ FUNC2 (char*,struct safe_stats*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(int argc, char *argv[])
{
	struct safe_stats stats;
	size_t slen;

	slen = sizeof (stats);
	if (FUNC2("hw.safe.stats", &stats, &slen, NULL, 0) < 0)
		FUNC0(1, "hw.safe.stats");

	FUNC1("input %llu bytes %u packets\n",
		stats.st_ibytes, stats.st_ipackets);
	FUNC1("output %llu bytes %u packets\n",
		stats.st_obytes, stats.st_opackets);
	FUNC1("invalid %u badsession %u badflags %u\n",
		stats.st_invalid, stats.st_badsession, stats.st_badflags);
	FUNC1("nodesc %u badalg %u ringfull %u\n",
		stats.st_nodesc, stats.st_badalg, stats.st_ringfull);
	FUNC1("peoperr %u dmaerr %u bypasstoobig %u\n",
		stats.st_peoperr, stats.st_dmaerr, stats.st_bypasstoobig);
	FUNC1("skipmismatch %u lenmismatch %u coffmisaligned %u cofftoobig %u\n",
		stats.st_skipmismatch, stats.st_lenmismatch,
		stats.st_coffmisaligned, stats.st_cofftoobig);
	FUNC1("iovmisaligned %u iovnotuniform %u noicvcopy %u\n",
		stats.st_iovmisaligned, stats.st_iovnotuniform,
		stats.st_noicvcopy);
	FUNC1("unaligned %u notuniform %u nomap %u noload %u\n",
		stats.st_unaligned, stats.st_notuniform, stats.st_nomap,
		stats.st_noload);
	FUNC1("nomcl %u mbuf %u maxqchip %u\n",
		stats.st_nomcl, stats.st_nombuf, stats.st_maxqchip);
	FUNC1("rng %u rngalarm %u\n",
		stats.st_rng, stats.st_rngalarm);
	return 0;
}