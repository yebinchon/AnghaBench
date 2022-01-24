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
typedef  int u64 ;
struct TYPE_2__ {int /*<<< orphan*/  tid; int /*<<< orphan*/  class_version; int /*<<< orphan*/  mgmt_class; int /*<<< orphan*/  base_version; } ;
struct ib_sa_mad {TYPE_1__ mad_hdr; } ;
struct ib_mad_agent {scalar_t__ hi_tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_MGMT_BASE_VERSION ; 
 int /*<<< orphan*/  IB_MGMT_CLASS_SUBN_ADM ; 
 int /*<<< orphan*/  IB_SA_CLASS_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_sa_mad*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tid ; 
 int /*<<< orphan*/  tid_lock ; 

__attribute__((used)) static void FUNC4(struct ib_sa_mad *mad, struct ib_mad_agent *agent)
{
	unsigned long flags;

	FUNC1(mad, 0, sizeof *mad);

	mad->mad_hdr.base_version  = IB_MGMT_BASE_VERSION;
	mad->mad_hdr.mgmt_class    = IB_MGMT_CLASS_SUBN_ADM;
	mad->mad_hdr.class_version = IB_SA_CLASS_VERSION;

	FUNC2(&tid_lock, flags);
	mad->mad_hdr.tid           =
		FUNC0(((u64) agent->hi_tid) << 32 | tid++);
	FUNC3(&tid_lock, flags);
}