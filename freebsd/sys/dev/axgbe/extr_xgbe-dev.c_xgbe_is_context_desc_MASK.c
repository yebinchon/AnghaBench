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
struct xgbe_ring_desc {int /*<<< orphan*/  desc3; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTXT ; 
 int /*<<< orphan*/  TX_NORMAL_DESC3 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct xgbe_ring_desc *rdesc)
{
	/* Rx and Tx share CTXT bit, so check TDES3.CTXT bit */
	return FUNC0(rdesc->desc3, TX_NORMAL_DESC3, CTXT);
}