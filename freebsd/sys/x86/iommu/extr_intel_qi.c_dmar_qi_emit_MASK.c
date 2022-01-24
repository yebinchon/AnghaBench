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
struct dmar_unit {int inv_queue_tail; int inv_queue_size; scalar_t__ inv_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int DMAR_IQ_DESCR_SZ ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

__attribute__((used)) static void
FUNC2(struct dmar_unit *unit, uint64_t data1, uint64_t data2)
{

	FUNC0(unit);
	*(volatile uint64_t *)(unit->inv_queue + unit->inv_queue_tail) = data1;
	unit->inv_queue_tail += DMAR_IQ_DESCR_SZ / 2;
	FUNC1(unit->inv_queue_tail <= unit->inv_queue_size,
	    ("tail overflow 0x%x 0x%jx", unit->inv_queue_tail,
	    (uintmax_t)unit->inv_queue_size));
	unit->inv_queue_tail &= unit->inv_queue_size - 1;
	*(volatile uint64_t *)(unit->inv_queue + unit->inv_queue_tail) = data2;
	unit->inv_queue_tail += DMAR_IQ_DESCR_SZ / 2;
	FUNC1(unit->inv_queue_tail <= unit->inv_queue_size,
	    ("tail overflow 0x%x 0x%jx", unit->inv_queue_tail,
	    (uintmax_t)unit->inv_queue_size));
	unit->inv_queue_tail &= unit->inv_queue_size - 1;
}