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
typedef  int /*<<< orphan*/  uint64_t ;
struct nicvf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NICVF_SQ_EN ; 
 int /*<<< orphan*/  NIC_QSET_SQ_0_7_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nicvf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct nicvf *nic, int qidx)
{
	uint64_t sq_cfg;

	sq_cfg = FUNC0(nic, NIC_QSET_SQ_0_7_CFG, qidx);
	sq_cfg &= ~NICVF_SQ_EN;
	FUNC1(nic, NIC_QSET_SQ_0_7_CFG, qidx, sq_cfg);
}