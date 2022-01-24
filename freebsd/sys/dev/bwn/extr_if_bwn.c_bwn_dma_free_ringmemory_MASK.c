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
struct bwn_dma_ring {int /*<<< orphan*/  dr_ring_dmap; int /*<<< orphan*/  dr_ring_descbase; int /*<<< orphan*/  dr_ring_dtag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bwn_dma_ring *dr)
{

	FUNC0(dr->dr_ring_dtag, dr->dr_ring_dmap);
	FUNC1(dr->dr_ring_dtag, dr->dr_ring_descbase,
	    dr->dr_ring_dmap);
}