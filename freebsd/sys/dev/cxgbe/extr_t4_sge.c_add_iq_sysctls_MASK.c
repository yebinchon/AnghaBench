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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sge_iq {int qsize; int /*<<< orphan*/  cidx; int /*<<< orphan*/  cntxt_id; int /*<<< orphan*/  abs_id; int /*<<< orphan*/  ba; } ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int IQ_ESIZE ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC3 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  sysctl_uint16 ; 

__attribute__((used)) static void
FUNC4(struct sysctl_ctx_list *ctx, struct sysctl_oid *oid,
    struct sge_iq *iq)
{
	struct sysctl_oid_list *children = FUNC3(oid);

	FUNC2(ctx, children, OID_AUTO, "ba", CTLFLAG_RD, &iq->ba,
	    "bus address of descriptor ring");
	FUNC0(ctx, children, OID_AUTO, "dmalen", CTLFLAG_RD, NULL,
	    iq->qsize * IQ_ESIZE, "descriptor ring size in bytes");
	FUNC1(ctx, children, OID_AUTO, "abs_id",
	    CTLTYPE_INT | CTLFLAG_RD, &iq->abs_id, 0, sysctl_uint16, "I",
	    "absolute id of the queue");
	FUNC1(ctx, children, OID_AUTO, "cntxt_id",
	    CTLTYPE_INT | CTLFLAG_RD, &iq->cntxt_id, 0, sysctl_uint16, "I",
	    "SGE context id of the queue");
	FUNC1(ctx, children, OID_AUTO, "cidx",
	    CTLTYPE_INT | CTLFLAG_RD, &iq->cidx, 0, sysctl_uint16, "I",
	    "consumer index");
}