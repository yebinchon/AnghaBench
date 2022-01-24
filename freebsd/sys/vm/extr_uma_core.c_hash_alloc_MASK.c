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
typedef  int u_int ;
struct uma_hash {int uh_hashsize; int uh_hashmask; struct slabhead* uh_slab_hash; } ;
struct slabhead {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_UMAHASH ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  UMA_ANYDOMAIN ; 
 int UMA_HASH_SIZE_INIT ; 
 int /*<<< orphan*/  FUNC1 (struct slabhead*,size_t) ; 
 int /*<<< orphan*/  hashzone ; 
 scalar_t__ FUNC2 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct slabhead* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uma_hash *hash, u_int size)
{
	size_t alloc;

	FUNC0(FUNC3(size), ("hash size must be power of 2"));
	if (size > UMA_HASH_SIZE_INIT)  {
		hash->uh_hashsize = size;
		alloc = sizeof(hash->uh_slab_hash[0]) * hash->uh_hashsize;
		hash->uh_slab_hash = (struct slabhead *)FUNC2(alloc,
		    M_UMAHASH, M_NOWAIT);
	} else {
		alloc = sizeof(hash->uh_slab_hash[0]) * UMA_HASH_SIZE_INIT;
		hash->uh_slab_hash = FUNC4(hashzone, NULL,
		    UMA_ANYDOMAIN, M_WAITOK);
		hash->uh_hashsize = UMA_HASH_SIZE_INIT;
	}
	if (hash->uh_slab_hash) {
		FUNC1(hash->uh_slab_hash, alloc);
		hash->uh_hashmask = hash->uh_hashsize - 1;
		return (1);
	}

	return (0);
}