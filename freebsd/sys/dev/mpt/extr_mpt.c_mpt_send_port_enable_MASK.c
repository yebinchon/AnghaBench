#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mpt_softc {scalar_t__ is_fc; scalar_t__ is_sas; } ;
struct TYPE_8__ {int index; TYPE_2__* req_vbuf; } ;
typedef  TYPE_1__ request_t ;
struct TYPE_9__ {int PortNumber; int /*<<< orphan*/  MsgContext; int /*<<< orphan*/  Function; } ;
typedef  TYPE_2__ MSG_PORT_ENABLE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MPI_FUNCTION_PORT_ENABLE ; 
 int /*<<< orphan*/  MPT_PRT_DEBUG ; 
 int MPT_REPLY_HANDLER_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct mpt_softc*) ; 
 int /*<<< orphan*/  REQ_STATE_DONE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mpt_softc*,TYPE_1__*) ; 
 TYPE_1__* FUNC5 (struct mpt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mpt_softc*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mpt_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mpt_softc*,TYPE_1__*) ; 
 int FUNC9 (struct mpt_softc*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC10(struct mpt_softc *mpt, int port)
{
	request_t	*req;
	MSG_PORT_ENABLE *enable_req;
	int		 error;

	req = FUNC5(mpt, /*sleep_ok*/FALSE);
	if (req == NULL)
		return (-1);

	enable_req = req->req_vbuf;
	FUNC2(enable_req, 0,  FUNC0(mpt));

	enable_req->Function   = MPI_FUNCTION_PORT_ENABLE;
	enable_req->MsgContext = FUNC1(req->index | MPT_REPLY_HANDLER_CONFIG);
	enable_req->PortNumber = port;

	FUNC3(mpt);
	FUNC6(mpt, MPT_PRT_DEBUG, "enabling port %d\n", port);

	FUNC8(mpt, req);
	error = FUNC9(mpt, req, REQ_STATE_DONE, REQ_STATE_DONE,
	    FALSE, (mpt->is_sas || mpt->is_fc)? 300000 : 30000);
	if (error != 0) {
		FUNC7(mpt, "port %d enable timed out\n", port);
		return (-1);
	}
	FUNC4(mpt, req);
	FUNC6(mpt, MPT_PRT_DEBUG, "enabled port %d\n", port);
	return (0);
}