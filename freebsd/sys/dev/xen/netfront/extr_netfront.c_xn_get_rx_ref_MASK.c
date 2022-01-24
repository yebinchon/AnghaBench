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
struct netfront_rxq {scalar_t__* grant_ref; } ;
typedef  scalar_t__ grant_ref_t ;
typedef  int /*<<< orphan*/  RING_IDX ;

/* Variables and functions */
 scalar_t__ GRANT_REF_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline grant_ref_t
FUNC2(struct netfront_rxq *rxq, RING_IDX ri)
{
	int i = FUNC1(ri);
	grant_ref_t ref = rxq->grant_ref[i];

	FUNC0(ref != GRANT_REF_INVALID, ("Invalid grant reference!\n"));
	rxq->grant_ref[i] = GRANT_REF_INVALID;
	return (ref);
}