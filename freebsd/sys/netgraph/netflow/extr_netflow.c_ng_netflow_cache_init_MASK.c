#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct flow_hash_entry {int /*<<< orphan*/  head; int /*<<< orphan*/  mtx; } ;
struct flow_entry {int dummy; } ;
struct flow6_entry {int dummy; } ;
typedef  TYPE_1__* priv_p ;
struct TYPE_4__ {void* nfinfo_inact_exp; void* nfinfo_act_exp; void* nfinfo_spackets6; void* nfinfo_sbytes6; void* nfinfo_spackets; void* nfinfo_sbytes; void* nfinfo_packets6; void* nfinfo_bytes6; void* nfinfo_packets; void* nfinfo_bytes; struct flow_hash_entry* hash6; struct flow_hash_entry* hash; void* zone6; void* zone; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHESIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  KTR_NET ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_NETFLOW_HASH ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int NBUCKETS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UMA_ALIGN_CACHE ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 void* FUNC6 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ) ; 

void
FUNC8(priv_p priv)
{
	struct flow_hash_entry *hsh;
	int i;

	/* Initialize cache UMA zone. */
	priv->zone = FUNC6("NetFlow IPv4 cache",
	    sizeof(struct flow_entry), NULL, NULL, NULL, NULL,
	    UMA_ALIGN_CACHE, 0);
	FUNC7(priv->zone, CACHESIZE);
#ifdef INET6	
	priv->zone6 = uma_zcreate("NetFlow IPv6 cache",
	    sizeof(struct flow6_entry), NULL, NULL, NULL, NULL,
	    UMA_ALIGN_CACHE, 0);
	uma_zone_set_max(priv->zone6, CACHESIZE);
#endif	

	/* Allocate hash. */
	priv->hash = FUNC3(NBUCKETS * sizeof(struct flow_hash_entry),
	    M_NETFLOW_HASH, M_WAITOK | M_ZERO);

	/* Initialize hash. */
	for (i = 0, hsh = priv->hash; i < NBUCKETS; i++, hsh++) {
		FUNC4(&hsh->mtx, "hash mutex", NULL, MTX_DEF);
		FUNC1(&hsh->head);
	}

#ifdef INET6
	/* Allocate hash. */
	priv->hash6 = malloc(NBUCKETS * sizeof(struct flow_hash_entry),
	    M_NETFLOW_HASH, M_WAITOK | M_ZERO);

	/* Initialize hash. */
	for (i = 0, hsh = priv->hash6; i < NBUCKETS; i++, hsh++) {
		mtx_init(&hsh->mtx, "hash mutex", NULL, MTX_DEF);
		TAILQ_INIT(&hsh->head);
	}
#endif

	priv->nfinfo_bytes = FUNC2(M_WAITOK);
	priv->nfinfo_packets = FUNC2(M_WAITOK);
	priv->nfinfo_bytes6 = FUNC2(M_WAITOK);
	priv->nfinfo_packets6 = FUNC2(M_WAITOK);
	priv->nfinfo_sbytes = FUNC2(M_WAITOK);
	priv->nfinfo_spackets = FUNC2(M_WAITOK);
	priv->nfinfo_sbytes6 = FUNC2(M_WAITOK);
	priv->nfinfo_spackets6 = FUNC2(M_WAITOK);
	priv->nfinfo_act_exp = FUNC2(M_WAITOK);
	priv->nfinfo_inact_exp = FUNC2(M_WAITOK);

	FUNC5(priv);
	FUNC0(KTR_NET, "ng_netflow startup()");
}