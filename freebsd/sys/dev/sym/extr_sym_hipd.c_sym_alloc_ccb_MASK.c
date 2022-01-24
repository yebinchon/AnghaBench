#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct sym_ccb {int dummy; } ;
typedef  TYPE_5__* hcb_p ;
typedef  TYPE_6__* ccb_p ;
struct TYPE_16__ {void* addr; } ;
struct TYPE_14__ {void* restart; void* start; } ;
struct TYPE_15__ {TYPE_1__ go; } ;
struct TYPE_17__ {TYPE_3__ smsg_ext; TYPE_2__ head; } ;
struct TYPE_19__ {struct TYPE_19__* sns_bbuf; int /*<<< orphan*/  link_ccbq; TYPE_4__ phys; struct TYPE_19__* link_ccbh; int /*<<< orphan*/  ccb_ba; int /*<<< orphan*/  ch; int /*<<< orphan*/  dmamap; } ;
struct TYPE_18__ {scalar_t__ actccbs; int /*<<< orphan*/  free_ccbq; TYPE_6__** ccbh; int /*<<< orphan*/  data_dmat; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ SYM_CONF_MAX_START ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int SYM_SNS_BBUF_LEN ; 
 int /*<<< orphan*/  bad_i_t_l ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idle ; 
 int /*<<< orphan*/ * msgin ; 
 void* FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 

__attribute__((used)) static ccb_p FUNC12(hcb_p np)
{
	ccb_p cp = NULL;
	int hcode;

	FUNC4(MA_NOTOWNED);

	/*
	 *  Prevent from allocating more CCBs than we can
	 *  queue to the controller.
	 */
	if (np->actccbs >= SYM_CONF_MAX_START)
		return NULL;

	/*
	 *  Allocate memory for this CCB.
	 */
	cp = FUNC8(sizeof(struct sym_ccb), "CCB");
	if (!cp)
		return NULL;

	/*
	 *  Allocate a bounce buffer for sense data.
	 */
	cp->sns_bbuf = FUNC8(SYM_SNS_BBUF_LEN, "SNS_BBUF");
	if (!cp->sns_bbuf)
		goto out_free;

	/*
	 *  Allocate a map for the DMA of user data.
	 */
	if (FUNC5(np->data_dmat, 0, &cp->dmamap))
		goto out_free;
	/*
	 *  Count it.
	 */
	np->actccbs++;

	/*
	 * Initialize the callout.
	 */
	FUNC6(&cp->ch, 1);

	/*
	 *  Compute the bus address of this ccb.
	 */
	cp->ccb_ba = FUNC11(cp);

	/*
	 *  Insert this ccb into the hashed list.
	 */
	hcode = FUNC0(cp->ccb_ba);
	cp->link_ccbh = np->ccbh[hcode];
	np->ccbh[hcode] = cp;

	/*
	 *  Initialize the start and restart actions.
	 */
	cp->phys.head.go.start   = FUNC7(FUNC2 (np, idle));
	cp->phys.head.go.restart = FUNC7(FUNC3 (np, bad_i_t_l));

 	/*
	 *  Initilialyze some other fields.
	 */
	cp->phys.smsg_ext.addr = FUNC7(FUNC1(np, msgin[2]));

	/*
	 *  Chain into free ccb queue.
	 */
	FUNC9(&cp->link_ccbq, &np->free_ccbq);

	return cp;
out_free:
	if (cp->sns_bbuf)
		FUNC10(cp->sns_bbuf, SYM_SNS_BBUF_LEN, "SNS_BBUF");
	FUNC10(cp, sizeof(*cp), "CCB");
	return NULL;
}