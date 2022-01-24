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
struct bwn_dmadesc_meta {int /*<<< orphan*/ * mt_ni; int /*<<< orphan*/ * mt_m; } ;
struct bwn_dma_ring {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct bwn_dma_ring *dr,
    struct bwn_dmadesc_meta *meta)
{

	if (meta->mt_m != NULL) {
		FUNC1(meta->mt_m);
		meta->mt_m = NULL;
	}
	if (meta->mt_ni != NULL) {
		FUNC0(meta->mt_ni);
		meta->mt_ni = NULL;
	}
}