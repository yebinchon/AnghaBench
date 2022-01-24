#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct mps_command {int /*<<< orphan*/  cm_sglsize; TYPE_2__* cm_sge; int /*<<< orphan*/  cm_chain_list; TYPE_4__* cm_sc; } ;
struct mps_chain {TYPE_1__* chain; int /*<<< orphan*/  chain_busaddr; } ;
struct TYPE_8__ {int /*<<< orphan*/  reqframesz; } ;
struct TYPE_7__ {int /*<<< orphan*/  Address; int /*<<< orphan*/  Flags; scalar_t__ NextChainOffset; int /*<<< orphan*/  Length; } ;
struct TYPE_6__ {int /*<<< orphan*/  MpiChain; } ;
struct TYPE_5__ {int /*<<< orphan*/  MpiSimple; } ;
typedef  TYPE_2__ MPI2_SGE_IO_UNION ;
typedef  TYPE_3__ MPI2_SGE_CHAIN32 ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  MPI2_SGE_FLAGS_CHAIN_ELEMENT ; 
 int /*<<< orphan*/  MPS_SGC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mps_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chain_link ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mps_chain* FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(struct mps_command *cm)
{
	MPI2_SGE_CHAIN32 *sgc;
	struct mps_chain *chain;
	u_int space;

	if (cm->cm_sglsize < MPS_SGC_SIZE)
		FUNC4("MPS: Need SGE Error Code\n");

	chain = FUNC3(cm->cm_sc);
	if (chain == NULL)
		return (ENOBUFS);

	space = cm->cm_sc->reqframesz;

	/*
	 * Note: a double-linked list is used to make it easier to
	 * walk for debugging.
	 */
	FUNC0(&cm->cm_chain_list, chain, chain_link);

	sgc = (MPI2_SGE_CHAIN32 *)&cm->cm_sge->MpiChain;
	sgc->Length = FUNC1(space);
	sgc->NextChainOffset = 0;
	/* TODO Looks like bug in Setting sgc->Flags. 
	 *	sgc->Flags = ( MPI2_SGE_FLAGS_CHAIN_ELEMENT | MPI2_SGE_FLAGS_64_BIT_ADDRESSING |
	 *	            MPI2_SGE_FLAGS_SYSTEM_ADDRESS) << MPI2_SGE_FLAGS_SHIFT
	 *	This is fine.. because we are not using simple element. In case of 
	 *	MPI2_SGE_CHAIN32, we have separate Length and Flags feild.
 	 */
	sgc->Flags = MPI2_SGE_FLAGS_CHAIN_ELEMENT;
	sgc->Address = FUNC2(chain->chain_busaddr);

	cm->cm_sge = (MPI2_SGE_IO_UNION *)&chain->chain->MpiSimple;
	cm->cm_sglsize = space;
	return (0);
}