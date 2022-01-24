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
struct nfsrvcache {int rc_flag; scalar_t__ rc_acked; int /*<<< orphan*/  rc_reply; int /*<<< orphan*/  rc_sockref; } ;
struct nfsrchash_bucket {int /*<<< orphan*/  mtx; } ;
struct TYPE_2__ {int /*<<< orphan*/  srvcache_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfsrvcache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NFSRVCACHE ; 
 struct nfsrchash_bucket* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ RC_NO_ACK ; 
 scalar_t__ RC_NO_SEQ ; 
 int RC_REPMBUF ; 
 int RC_UDP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nfsrvcache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsrvcache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfsrc_tcpsavedreplies ; 
 int /*<<< orphan*/  nfsrc_udpcachesize ; 
 int /*<<< orphan*/  FUNC8 (struct nfsrvcache*) ; 
 int /*<<< orphan*/  nfsrvudplru ; 
 TYPE_1__ nfsstatsv1 ; 
 int /*<<< orphan*/  rc_ahash ; 
 int /*<<< orphan*/  rc_hash ; 
 int /*<<< orphan*/  rc_lru ; 

__attribute__((used)) static void
FUNC9(struct nfsrvcache *rp)
{
	struct nfsrchash_bucket *hbp;

	FUNC0(rp, rc_hash);
	if (rp->rc_flag & RC_UDP) {
		FUNC2(&nfsrvudplru, rp, rc_lru);
		nfsrc_udpcachesize--;
	} else if (rp->rc_acked != RC_NO_SEQ) {
		hbp = FUNC1(rp->rc_sockref);
		FUNC6(&hbp->mtx);
		if (rp->rc_acked == RC_NO_ACK)
			FUNC0(rp, rc_ahash);
		FUNC7(&hbp->mtx);
	}
	FUNC8(rp);
	if (rp->rc_flag & RC_REPMBUF) {
		FUNC5(rp->rc_reply);
		if (!(rp->rc_flag & RC_UDP))
			FUNC3(&nfsrc_tcpsavedreplies, -1);
	}
	FUNC4(rp, M_NFSRVCACHE);
	FUNC3(&nfsstatsv1.srvcache_size, -1);
}