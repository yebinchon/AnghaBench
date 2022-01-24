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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u_int ;
struct timespec {long double tv_sec; scalar_t__ tv_nsec; } ;
struct nfsstatsv1 {void* vers; } ;
typedef  int /*<<< orphan*/  lasttotal ;
typedef  int /*<<< orphan*/  lastst ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t NFSPROC_ACCESS ; 
 size_t NFSPROC_GETATTR ; 
 size_t NFSPROC_LOOKUP ; 
 size_t NFSPROC_READ ; 
 size_t NFSPROC_READDIR ; 
 size_t NFSPROC_READDIRPLUS ; 
 size_t NFSPROC_READLINK ; 
 size_t NFSPROC_RENAME ; 
 size_t NFSPROC_WRITE ; 
 void* NFSSTATS_V1 ; 
 int NFSSVC_GETSTATS ; 
 int NFSSVC_NEWSTRUCT ; 
 size_t NFSV4OP_ACCESS ; 
 size_t NFSV4OP_GETATTR ; 
 size_t NFSV4OP_LOOKUP ; 
 size_t NFSV4OP_READ ; 
 size_t NFSV4OP_READDIR ; 
 size_t NFSV4OP_READDIRPLUS ; 
 size_t NFSV4OP_READLINK ; 
 size_t NFSV4OP_RENAME ; 
 size_t NFSV4OP_WRITE ; 
 int NUM_STAT_TYPES ; 
 int STAT_TYPE_COMMIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  accesscache_hits ; 
 int /*<<< orphan*/  accesscache_misses ; 
 int /*<<< orphan*/  attrcache_hits ; 
 int /*<<< orphan*/  attrcache_misses ; 
 int /*<<< orphan*/  FUNC2 (struct nfsstatsv1*,struct nfsstatsv1*,int) ; 
 int /*<<< orphan*/  biocache_readdirs ; 
 int /*<<< orphan*/  biocache_reads ; 
 int /*<<< orphan*/  biocache_writes ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsstatsv1*,struct nfsstatsv1*,int /*<<< orphan*/ ,long double,long double*,long double*,long double*,long double*,int /*<<< orphan*/ *,long double*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfsstatsv1*,struct nfsstatsv1*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lookupcache_hits ; 
 int /*<<< orphan*/  lookupcache_misses ; 
 scalar_t__ FUNC8 (int,struct nfsstatsv1*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int) ; 
 int /*<<< orphan*/  read_bios ; 
 int /*<<< orphan*/  readdir_bios ; 
 int /*<<< orphan*/ * rpccnt ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 char* FUNC12 (scalar_t__,scalar_t__) ; 
 char* FUNC13 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * srvrpccnt ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ widemode ; 
 int /*<<< orphan*/  write_bios ; 

__attribute__((used)) static void
FUNC14(u_int interval, int clientOnly, int serverOnly,
    int newStats)
{
	struct nfsstatsv1 nfsstats, lastst, *ext_nfsstatsp;
	struct nfsstatsv1 curtotal, lasttotal;
	struct timespec ts, lastts;
	int hdrcnt = 1;

	ext_nfsstatsp = &lastst;
	ext_nfsstatsp->vers = NFSSTATS_V1;
	if (FUNC8(NFSSVC_GETSTATS | NFSSVC_NEWSTRUCT, ext_nfsstatsp) < 0)
		FUNC6(1, "Can't get stats");
	FUNC3(CLOCK_MONOTONIC, &lastts);
	FUNC5(&lasttotal, ext_nfsstatsp);
	FUNC11(interval);

	for (;;) {
		ext_nfsstatsp = &nfsstats;
		ext_nfsstatsp->vers = NFSSTATS_V1;
		if (FUNC8(NFSSVC_GETSTATS | NFSSVC_NEWSTRUCT, ext_nfsstatsp)
		    < 0)
			FUNC6(1, "Can't get stats");
		FUNC3(CLOCK_MONOTONIC, &ts);

		if (--hdrcnt == 0) {
			FUNC10(clientOnly, serverOnly, newStats);
			if (newStats)
				hdrcnt = 20;
			else if (clientOnly && serverOnly)
				hdrcnt = 10;
			else
				hdrcnt = 20;
		}
		if (clientOnly && newStats == 0) {
		    FUNC9("%s %6ju %6ju %6ju %6ju %6ju %6ju %6ju %6ju",
			((clientOnly && serverOnly) ? "Client:" : ""),
			(uintmax_t)FUNC0(rpccnt[NFSPROC_GETATTR]),
			(uintmax_t)FUNC0(rpccnt[NFSPROC_LOOKUP]),
			(uintmax_t)FUNC0(rpccnt[NFSPROC_READLINK]),
			(uintmax_t)FUNC0(rpccnt[NFSPROC_READ]),
			(uintmax_t)FUNC0(rpccnt[NFSPROC_WRITE]),
			(uintmax_t)FUNC0(rpccnt[NFSPROC_RENAME]),
			(uintmax_t)FUNC0(rpccnt[NFSPROC_ACCESS]),
			(uintmax_t)(FUNC0(rpccnt[NFSPROC_READDIR]) +
			FUNC0(rpccnt[NFSPROC_READDIRPLUS]))
		    );
		    if (widemode) {
			    FUNC9(" %s %s %s %s %s %s",
				FUNC12(FUNC0(attrcache_hits),
				    FUNC0(attrcache_misses)),
				FUNC12(FUNC0(lookupcache_hits), 
				    FUNC0(lookupcache_misses)),
				FUNC13(FUNC0(biocache_reads),
				    FUNC0(read_bios)),
				FUNC13(FUNC0(biocache_writes),
				    FUNC0(write_bios)),
				FUNC12(FUNC0(accesscache_hits),
				    FUNC0(accesscache_misses)),
				FUNC13(FUNC0(biocache_readdirs),
				    FUNC0(readdir_bios))
			    );
		    }
		    FUNC9("\n");
		}

		if (serverOnly && newStats) {
			long double cur_secs, last_secs, etime;
			long double mbsec;
			long double kb_per_transfer;
			long double transfers_per_second;
			long double ms_per_transfer;
			uint64_t queue_len;
			long double busy_pct;
			int i;

			cur_secs = ts.tv_sec +
			    ((long double)ts.tv_nsec / 1000000000);
			last_secs = lastts.tv_sec +
			    ((long double)lastts.tv_nsec / 1000000000);
			etime = cur_secs - last_secs;

			FUNC5(&curtotal, &nfsstats);

			for (i = 0; i < NUM_STAT_TYPES; i++) {
				FUNC4(&nfsstats, &lastst,
				    FUNC1(i), etime, &mbsec,
				    &kb_per_transfer,
				    &transfers_per_second,
				    &ms_per_transfer, &queue_len,
				    &busy_pct);

				if (i == STAT_TYPE_COMMIT) {
					if (widemode == 0)
						continue;

					FUNC9("%2.0Lf %7.2Lf ",
					    transfers_per_second,
					    ms_per_transfer);
				} else {
					FUNC9("%5.2Lf %5.0Lf %7.2Lf ",
					    kb_per_transfer,
					    transfers_per_second, mbsec);
					if (widemode)
						FUNC9("%5.2Lf ",
						    ms_per_transfer);
				}
			}

			FUNC4(&curtotal, &lasttotal, 0, etime,
			    &mbsec, &kb_per_transfer, &transfers_per_second,
			    &ms_per_transfer, &queue_len, &busy_pct);

			FUNC9("%5.2Lf %5.0Lf %7.2Lf %5.2Lf %3ju %3.0Lf\n",
			    kb_per_transfer, transfers_per_second, mbsec,
			    ms_per_transfer, queue_len, busy_pct);
		} else if (serverOnly) {
		    FUNC9("%s %6ju %6ju %6ju %6ju %6ju %6ju %6ju %6ju",
			((clientOnly && serverOnly) ? "Server:" : ""),
			(uintmax_t)FUNC0(srvrpccnt[NFSV4OP_GETATTR]),
			(uintmax_t)FUNC0(srvrpccnt[NFSV4OP_LOOKUP]),
			(uintmax_t)FUNC0(srvrpccnt[NFSV4OP_READLINK]),
			(uintmax_t)FUNC0(srvrpccnt[NFSV4OP_READ]),
			(uintmax_t)FUNC0(srvrpccnt[NFSV4OP_WRITE]),
			(uintmax_t)FUNC0(srvrpccnt[NFSV4OP_RENAME]),
			(uintmax_t)FUNC0(srvrpccnt[NFSV4OP_ACCESS]),
			(uintmax_t)(FUNC0(srvrpccnt[NFSV4OP_READDIR]) +
			FUNC0(srvrpccnt[NFSV4OP_READDIRPLUS])));
		    FUNC9("\n");
		}
		FUNC2(&nfsstats, &lastst, sizeof(lastst));
		FUNC2(&curtotal, &lasttotal, sizeof(lasttotal));
		lastts = ts;
		FUNC7(stdout);
		FUNC11(interval);
	}
	/*NOTREACHED*/
}