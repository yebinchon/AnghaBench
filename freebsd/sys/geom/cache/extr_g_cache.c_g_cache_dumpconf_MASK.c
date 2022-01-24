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
typedef  int /*<<< orphan*/  uintmax_t ;
struct sbuf {int dummy; } ;
struct g_provider {int dummy; } ;
struct g_geom {struct g_cache_softc* softc; } ;
struct g_consumer {int dummy; } ;
struct g_cache_softc {int /*<<< orphan*/  sc_wrotebytes; int /*<<< orphan*/  sc_writes; int /*<<< orphan*/  sc_cachefull; int /*<<< orphan*/  sc_cachemisses; int /*<<< orphan*/  sc_cachehits; int /*<<< orphan*/  sc_cachereadbytes; int /*<<< orphan*/  sc_cachereads; int /*<<< orphan*/  sc_readbytes; int /*<<< orphan*/  sc_reads; int /*<<< orphan*/  sc_invalid; int /*<<< orphan*/  sc_nused; int /*<<< orphan*/  sc_nent; scalar_t__ sc_tail; int /*<<< orphan*/  sc_bsize; int /*<<< orphan*/  sc_maxent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbuf*,char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct sbuf *sb, const char *indent, struct g_geom *gp,
    struct g_consumer *cp, struct g_provider *pp)
{
	struct g_cache_softc *sc;

	if (pp != NULL || cp != NULL)
		return;
	sc = gp->softc;
	FUNC0(sb, "%s<Size>%u</Size>\n", indent, sc->sc_maxent);
	FUNC0(sb, "%s<BlockSize>%u</BlockSize>\n", indent, sc->sc_bsize);
	FUNC0(sb, "%s<TailOffset>%ju</TailOffset>\n", indent,
	    (uintmax_t)sc->sc_tail);
	FUNC0(sb, "%s<Entries>%u</Entries>\n", indent, sc->sc_nent);
	FUNC0(sb, "%s<UsedEntries>%u</UsedEntries>\n", indent,
	    sc->sc_nused);
	FUNC0(sb, "%s<InvalidEntries>%u</InvalidEntries>\n", indent,
	    sc->sc_invalid);
	FUNC0(sb, "%s<Reads>%ju</Reads>\n", indent, sc->sc_reads);
	FUNC0(sb, "%s<ReadBytes>%ju</ReadBytes>\n", indent,
	    sc->sc_readbytes);
	FUNC0(sb, "%s<CacheReads>%ju</CacheReads>\n", indent,
	    sc->sc_cachereads);
	FUNC0(sb, "%s<CacheReadBytes>%ju</CacheReadBytes>\n", indent,
	    sc->sc_cachereadbytes);
	FUNC0(sb, "%s<CacheHits>%ju</CacheHits>\n", indent,
	    sc->sc_cachehits);
	FUNC0(sb, "%s<CacheMisses>%ju</CacheMisses>\n", indent,
	    sc->sc_cachemisses);
	FUNC0(sb, "%s<CacheFull>%ju</CacheFull>\n", indent,
	    sc->sc_cachefull);
	FUNC0(sb, "%s<Writes>%ju</Writes>\n", indent, sc->sc_writes);
	FUNC0(sb, "%s<WroteBytes>%ju</WroteBytes>\n", indent,
	    sc->sc_wrotebytes);
}