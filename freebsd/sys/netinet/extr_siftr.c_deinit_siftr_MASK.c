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

/* Variables and functions */
 int /*<<< orphan*/  M_SIFTR ; 
 int /*<<< orphan*/  SIFTR_DISABLE ; 
 int /*<<< orphan*/  counter_hash ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  siftr_hashmask ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  siftr_pkt_mgr_mtx ; 
 int /*<<< orphan*/  siftr_pkt_queue_mtx ; 

__attribute__((used)) static int
FUNC3(void)
{
	/* Cleanup. */
	FUNC2(SIFTR_DISABLE);
	FUNC0(counter_hash, M_SIFTR, siftr_hashmask);
	FUNC1(&siftr_pkt_queue_mtx);
	FUNC1(&siftr_pkt_mgr_mtx);

	return (0);
}