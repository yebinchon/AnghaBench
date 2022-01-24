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
typedef  int uintmax_t ;
typedef  int /*<<< orphan*/  u_long ;
struct sfstat {scalar_t__ sf_allocwait; scalar_t__ sf_allocfail; scalar_t__ sf_busy; scalar_t__ sf_rhpages_read; scalar_t__ sf_rhpages_requested; scalar_t__ sf_pages_bogus; scalar_t__ sf_pages_valid; scalar_t__ sf_pages_read; scalar_t__ sf_iocnt; scalar_t__ sf_noiocnt; scalar_t__ sf_syscalls; } ;
struct memory_type_list {int dummy; } ;
struct memory_type {int dummy; } ;
typedef  int /*<<< orphan*/  sfstat ;
typedef  int /*<<< orphan*/  nsfbufs ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCATOR_MALLOC ; 
 int /*<<< orphan*/  ALLOCATOR_UMA ; 
 int /*<<< orphan*/  MBUF_CLUSTER_MEM_NAME ; 
 int /*<<< orphan*/  MBUF_JUMBO16_MEM_NAME ; 
 int /*<<< orphan*/  MBUF_JUMBO9_MEM_NAME ; 
 int /*<<< orphan*/  MBUF_JUMBOP_MEM_NAME ; 
 int /*<<< orphan*/  MBUF_MEM_NAME ; 
 int /*<<< orphan*/  MBUF_PACKET_MEM_NAME ; 
 int /*<<< orphan*/  MBUF_TAG_MEM_NAME ; 
 int MEMSTAT_ERROR_KVM ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,struct sfstat*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kread_counters ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ live ; 
 int FUNC2 (struct memory_type*) ; 
 int FUNC3 (struct memory_type*) ; 
 int FUNC4 (struct memory_type*) ; 
 int FUNC5 (struct memory_type*) ; 
 int FUNC6 (struct memory_type*) ; 
 int FUNC7 (struct memory_type*) ; 
 int FUNC8 (struct memory_type*) ; 
 scalar_t__ FUNC9 (struct memory_type_list*,void*) ; 
 struct memory_type_list* FUNC10 () ; 
 struct memory_type* FUNC11 (struct memory_type_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct memory_type_list*) ; 
 int FUNC13 (struct memory_type_list*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (struct memory_type_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int tag_count ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ) ; 

void
FUNC22(void *kvmd, u_long mbaddr)
{
	struct memory_type_list *mtlp;
	struct memory_type *mtp;
	uintmax_t mbuf_count, mbuf_bytes, mbuf_free, mbuf_failures, mbuf_size;
	uintmax_t mbuf_sleeps;
	uintmax_t cluster_count, cluster_limit, cluster_free;
	uintmax_t cluster_failures, cluster_size, cluster_sleeps;
	uintmax_t packet_count, packet_bytes, packet_free, packet_failures;
	uintmax_t packet_sleeps;
	uintmax_t tag_bytes;
	uintmax_t jumbop_count, jumbop_limit, jumbop_free;
	uintmax_t jumbop_failures, jumbop_sleeps, jumbop_size;
	uintmax_t jumbo9_count, jumbo9_limit, jumbo9_free;
	uintmax_t jumbo9_failures, jumbo9_sleeps, jumbo9_size;
	uintmax_t jumbo16_count, jumbo16_limit, jumbo16_free;
	uintmax_t jumbo16_failures, jumbo16_sleeps, jumbo16_size;
	uintmax_t bytes_inuse, bytes_incache, bytes_total;
	int nsfbufs, nsfbufspeak, nsfbufsused;
	struct sfstat sfstat;
	size_t mlen;
	int error;

	mtlp = FUNC10();
	if (mtlp == NULL) {
		FUNC20("memstat_mtl_alloc");
		return;
	}

	/*
	 * Use memstat_*_all() because some mbuf-related memory is in uma(9),
	 * and some malloc(9).
	 */
	if (live) {
		if (FUNC15(mtlp, 0) < 0) {
			FUNC21("memstat_sysctl_all: %s",
			    FUNC14(FUNC13(mtlp)));
			goto out;
		}
	} else {
		if (FUNC9(mtlp, kvmd) < 0) {
			error = FUNC13(mtlp);
			if (error == MEMSTAT_ERROR_KVM)
				FUNC21("memstat_kvm_all: %s",
				    FUNC1(kvmd));
			else
				FUNC21("memstat_kvm_all: %s",
				    FUNC14(error));
			goto out;
		}
	}

	mtp = FUNC11(mtlp, ALLOCATOR_UMA, MBUF_MEM_NAME);
	if (mtp == NULL) {
		FUNC21("memstat_mtl_find: zone %s not found", MBUF_MEM_NAME);
		goto out;
	}
	mbuf_count = FUNC3(mtp);
	mbuf_bytes = FUNC2(mtp);
	mbuf_free = FUNC6(mtp);
	mbuf_failures = FUNC5(mtp);
	mbuf_sleeps = FUNC8(mtp);
	mbuf_size = FUNC7(mtp);

	mtp = FUNC11(mtlp, ALLOCATOR_UMA, MBUF_PACKET_MEM_NAME);
	if (mtp == NULL) {
		FUNC21("memstat_mtl_find: zone %s not found",
		    MBUF_PACKET_MEM_NAME);
		goto out;
	}
	packet_count = FUNC3(mtp);
	packet_bytes = FUNC2(mtp);
	packet_free = FUNC6(mtp);
	packet_sleeps = FUNC8(mtp);
	packet_failures = FUNC5(mtp);

	mtp = FUNC11(mtlp, ALLOCATOR_UMA, MBUF_CLUSTER_MEM_NAME);
	if (mtp == NULL) {
		FUNC21("memstat_mtl_find: zone %s not found",
		    MBUF_CLUSTER_MEM_NAME);
		goto out;
	}
	cluster_count = FUNC3(mtp);
	cluster_limit = FUNC4(mtp);
	cluster_free = FUNC6(mtp);
	cluster_failures = FUNC5(mtp);
	cluster_sleeps = FUNC8(mtp);
	cluster_size = FUNC7(mtp);

	mtp = FUNC11(mtlp, ALLOCATOR_MALLOC, MBUF_TAG_MEM_NAME);
	if (mtp == NULL) {
		FUNC21("memstat_mtl_find: malloc type %s not found",
		    MBUF_TAG_MEM_NAME);
		goto out;
	}
	tag_bytes = FUNC2(mtp);

	mtp = FUNC11(mtlp, ALLOCATOR_UMA, MBUF_JUMBOP_MEM_NAME);
	if (mtp == NULL) {
		FUNC21("memstat_mtl_find: zone %s not found",
		    MBUF_JUMBOP_MEM_NAME);
		goto out;
	}
	jumbop_count = FUNC3(mtp);
	jumbop_limit = FUNC4(mtp);
	jumbop_free = FUNC6(mtp);
	jumbop_failures = FUNC5(mtp);
	jumbop_sleeps = FUNC8(mtp);
	jumbop_size = FUNC7(mtp);

	mtp = FUNC11(mtlp, ALLOCATOR_UMA, MBUF_JUMBO9_MEM_NAME);
	if (mtp == NULL) {
		FUNC21("memstat_mtl_find: zone %s not found",
		    MBUF_JUMBO9_MEM_NAME);
		goto out;
	}
	jumbo9_count = FUNC3(mtp);
	jumbo9_limit = FUNC4(mtp);
	jumbo9_free = FUNC6(mtp);
	jumbo9_failures = FUNC5(mtp);
	jumbo9_sleeps = FUNC8(mtp);
	jumbo9_size = FUNC7(mtp);

	mtp = FUNC11(mtlp, ALLOCATOR_UMA, MBUF_JUMBO16_MEM_NAME);
	if (mtp == NULL) {
		FUNC21("memstat_mtl_find: zone %s not found",
		    MBUF_JUMBO16_MEM_NAME);
		goto out;
	}
	jumbo16_count = FUNC3(mtp);
	jumbo16_limit = FUNC4(mtp);
	jumbo16_free = FUNC6(mtp);
	jumbo16_failures = FUNC5(mtp);
	jumbo16_sleeps = FUNC8(mtp);
	jumbo16_size = FUNC7(mtp);

	FUNC19("mbuf-statistics");

	FUNC18("{:mbuf-current/%ju}/{:mbuf-cache/%ju}/{:mbuf-total/%ju} "
	    "{N:mbufs in use (current\\/cache\\/total)}\n",
	    mbuf_count + packet_count, mbuf_free + packet_free,
	    mbuf_count + packet_count + mbuf_free + packet_free);

	FUNC18("{:cluster-current/%ju}/{:cluster-cache/%ju}/"
	    "{:cluster-total/%ju}/{:cluster-max/%ju} "
	    "{N:mbuf clusters in use (current\\/cache\\/total\\/max)}\n",
	    cluster_count - packet_free, cluster_free + packet_free,
	    cluster_count + cluster_free, cluster_limit);

	FUNC18("{:packet-count/%ju}/{:packet-free/%ju} "
	    "{N:mbuf+clusters out of packet secondary zone in use "
	    "(current\\/cache)}\n",
	    packet_count, packet_free);

	FUNC18("{:jumbo-count/%ju}/{:jumbo-cache/%ju}/{:jumbo-total/%ju}/"
	    "{:jumbo-max/%ju} {:jumbo-page-size/%ju}{U:k} {N:(page size)} "
	    "{N:jumbo clusters in use (current\\/cache\\/total\\/max)}\n",
	    jumbop_count, jumbop_free, jumbop_count + jumbop_free,
	    jumbop_limit, jumbop_size / 1024);

	FUNC18("{:jumbo9-count/%ju}/{:jumbo9-cache/%ju}/"
	    "{:jumbo9-total/%ju}/{:jumbo9-max/%ju} "
	    "{N:9k jumbo clusters in use (current\\/cache\\/total\\/max)}\n",
	    jumbo9_count, jumbo9_free, jumbo9_count + jumbo9_free,
	    jumbo9_limit);

	FUNC18("{:jumbo16-count/%ju}/{:jumbo16-cache/%ju}/"
	    "{:jumbo16-total/%ju}/{:jumbo16-limit/%ju} "
	    "{N:16k jumbo clusters in use (current\\/cache\\/total\\/max)}\n",
	    jumbo16_count, jumbo16_free, jumbo16_count + jumbo16_free,
	    jumbo16_limit);

#if 0
	xo_emit("{:tag-count/%ju} {N:mbuf tags in use}\n", tag_count);
#endif

	/*-
	 * Calculate in-use bytes as:
	 * - straight mbuf memory
	 * - mbuf memory in packets
	 * - the clusters attached to packets
	 * - and the rest of the non-packet-attached clusters.
	 * - m_tag memory
	 * This avoids counting the clusters attached to packets in the cache.
	 * This currently excludes sf_buf space.
	 */
	bytes_inuse =
	    mbuf_bytes +			/* straight mbuf memory */
	    packet_bytes +			/* mbufs in packets */
	    (packet_count * cluster_size) +	/* clusters in packets */
	    /* other clusters */
	    ((cluster_count - packet_count - packet_free) * cluster_size) +
	    tag_bytes +
	    (jumbop_count * jumbop_size) +	/* jumbo clusters */
	    (jumbo9_count * jumbo9_size) +
	    (jumbo16_count * jumbo16_size);

	/*
	 * Calculate in-cache bytes as:
	 * - cached straught mbufs
	 * - cached packet mbufs
	 * - cached packet clusters
	 * - cached straight clusters
	 * This currently excludes sf_buf space.
	 */
	bytes_incache =
	    (mbuf_free * mbuf_size) +		/* straight free mbufs */
	    (packet_free * mbuf_size) +		/* mbufs in free packets */
	    (packet_free * cluster_size) +	/* clusters in free packets */
	    (cluster_free * cluster_size) +	/* free clusters */
	    (jumbop_free * jumbop_size) +	/* jumbo clusters */
	    (jumbo9_free * jumbo9_size) +
	    (jumbo16_free * jumbo16_size);

	/*
	 * Total is bytes in use + bytes in cache.  This doesn't take into
	 * account various other misc data structures, overhead, etc, but
	 * gives the user something useful despite that.
	 */
	bytes_total = bytes_inuse + bytes_incache;

	FUNC18("{:bytes-in-use/%ju}{U:K}/{:bytes-in-cache/%ju}{U:K}/"
	    "{:bytes-total/%ju}{U:K} "
	    "{N:bytes allocated to network (current\\/cache\\/total)}\n",
	    bytes_inuse / 1024, bytes_incache / 1024, bytes_total / 1024);

	FUNC18("{:mbuf-failures/%ju}/{:cluster-failures/%ju}/"
	    "{:packet-failures/%ju} {N:requests for mbufs denied "
	    "(mbufs\\/clusters\\/mbuf+clusters)}\n",
	    mbuf_failures, cluster_failures, packet_failures);
	FUNC18("{:mbuf-sleeps/%ju}/{:cluster-sleeps/%ju}/{:packet-sleeps/%ju} "
	    "{N:requests for mbufs delayed "
	    "(mbufs\\/clusters\\/mbuf+clusters)}\n",
	    mbuf_sleeps, cluster_sleeps, packet_sleeps);

	FUNC18("{:jumbop-sleeps/%ju}/{:jumbo9-sleeps/%ju}/"
	    "{:jumbo16-sleeps/%ju} {N:/requests for jumbo clusters delayed "
	    "(%juk\\/9k\\/16k)}\n",
	    jumbop_sleeps, jumbo9_sleeps, jumbo16_sleeps, jumbop_size / 1024);
	FUNC18("{:jumbop-failures/%ju}/{:jumbo9-failures/%ju}/"
	    "{:jumbo16-failures/%ju} {N:/requests for jumbo clusters denied "
	    "(%juk\\/9k\\/16k)}\n",
	    jumbop_failures, jumbo9_failures, jumbo16_failures,
	    jumbop_size / 1024);

	mlen = sizeof(nsfbufs);
	if (live &&
	    FUNC16("kern.ipc.nsfbufs", &nsfbufs, &mlen, NULL, 0) == 0 &&
	    FUNC16("kern.ipc.nsfbufsused", &nsfbufsused, &mlen,
	    NULL, 0) == 0 &&
	    FUNC16("kern.ipc.nsfbufspeak", &nsfbufspeak, &mlen,
	    NULL, 0) == 0)
		FUNC18("{:nsfbufs-current/%d}/{:nsfbufs-peak/%d}/"
		    "{:nsfbufs/%d} "
		    "{N:sfbufs in use (current\\/peak\\/max)}\n",
		    nsfbufsused, nsfbufspeak, nsfbufs);

	if (FUNC0("kern.ipc.sfstat", mbaddr, &sfstat, sizeof(sfstat),
	    kread_counters) != 0)
		goto out;

        FUNC18("{:sendfile-syscalls/%ju} {N:sendfile syscalls}\n",
	    (uintmax_t)sfstat.sf_syscalls); 
        FUNC18("{:sendfile-no-io/%ju} "
	    "{N:sendfile syscalls completed without I\\/O request}\n", 
            (uintmax_t)sfstat.sf_noiocnt);
	FUNC18("{:sendfile-io-count/%ju} "
	    "{N:requests for I\\/O initiated by sendfile}\n",
	    (uintmax_t)sfstat.sf_iocnt);
        FUNC18("{:sendfile-pages-sent/%ju} "
	    "{N:pages read by sendfile as part of a request}\n",
            (uintmax_t)sfstat.sf_pages_read);
        FUNC18("{:sendfile-pages-valid/%ju} "
	    "{N:pages were valid at time of a sendfile request}\n",
            (uintmax_t)sfstat.sf_pages_valid);
        FUNC18("{:sendfile-pages-bogus/%ju} "
	    "{N:pages were valid and substituted to bogus page}\n",
            (uintmax_t)sfstat.sf_pages_bogus);
        FUNC18("{:sendfile-requested-readahead/%ju} "
	    "{N:pages were requested for read ahead by applications}\n",
            (uintmax_t)sfstat.sf_rhpages_requested);
        FUNC18("{:sendfile-readahead/%ju} "
	    "{N:pages were read ahead by sendfile}\n",
            (uintmax_t)sfstat.sf_rhpages_read);
	FUNC18("{:sendfile-busy-encounters/%ju} "
	    "{N:times sendfile encountered an already busy page}\n",
	    (uintmax_t)sfstat.sf_busy);
	FUNC18("{:sfbufs-alloc-failed/%ju} {N:requests for sfbufs denied}\n",
	    (uintmax_t)sfstat.sf_allocfail);
	FUNC18("{:sfbufs-alloc-wait/%ju} {N:requests for sfbufs delayed}\n",
	    (uintmax_t)sfstat.sf_allocwait);
out:
	FUNC17("mbuf-statistics");
	FUNC12(mtlp);
}