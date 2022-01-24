#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct taskqgroup {int dummy; } ;
struct grouptask {int dummy; } ;
typedef  scalar_t__ iflib_intr_type_t ;
typedef  TYPE_2__* if_irq_t ;
typedef  TYPE_3__* if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_8__ {scalar_t__ isc_nrxqsets; } ;
struct TYPE_10__ {int ifc_sysctl_core_offset; int ifc_cpuid_highest; TYPE_1__ ifc_softc_ctx; scalar_t__ ifc_sysctl_separate_txrx; int /*<<< orphan*/  ifc_dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  ii_res; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ IFLIB_INTR_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (TYPE_3__*,int) ; 
 int FUNC3 (TYPE_3__*,scalar_t__,int) ; 
 int FUNC4 (struct taskqgroup*,struct grouptask*,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static inline int
FUNC5(if_ctx_t ctx, if_irq_t irq, iflib_intr_type_t type,
    int qid, struct grouptask *gtask, struct taskqgroup *tqg, void *uniq,
    const char *name)
{
	device_t dev;
	int co, cpuid, err, tid;

	dev = ctx->ifc_dev;
	co = ctx->ifc_sysctl_core_offset;
	if (ctx->ifc_sysctl_separate_txrx && type == IFLIB_INTR_TX)
		co += ctx->ifc_softc_ctx.isc_nrxqsets;
	cpuid = FUNC2(ctx, qid + co);
	tid = FUNC3(ctx, type, qid);
	if (tid < 0) {
		FUNC0(dev, "get_core_offset failed\n");
		return (EOPNOTSUPP);
	}
	cpuid = FUNC1(cpuid, tid);
	err = FUNC4(tqg, gtask, uniq, cpuid, dev, irq->ii_res,
	    name);
	if (err) {
		FUNC0(dev, "taskqgroup_attach_cpu failed %d\n", err);
		return (err);
	}
#ifdef notyet
	if (cpuid > ctx->ifc_cpuid_highest)
		ctx->ifc_cpuid_highest = cpuid;
#endif
	return (0);
}