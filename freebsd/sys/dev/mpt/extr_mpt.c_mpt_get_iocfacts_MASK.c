#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mpt_softc {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  MsgContext; int /*<<< orphan*/  Function; } ;
typedef  int /*<<< orphan*/  MSG_IOC_FACTS_REPLY ;
typedef  TYPE_1__ MSG_IOC_FACTS ;

/* Variables and functions */
 int /*<<< orphan*/  MPI_FUNCTION_IOC_FACTS ; 
 int /*<<< orphan*/  MPT_REPLY_HANDLER_HANDSHAKE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mpt_softc*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mpt_softc*,int,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(struct mpt_softc *mpt, MSG_IOC_FACTS_REPLY *freplp)
{
	MSG_IOC_FACTS f_req;
	int error;
	
	FUNC1(&f_req, 0, sizeof f_req);
	f_req.Function = MPI_FUNCTION_IOC_FACTS;
	f_req.MsgContext = FUNC0(MPT_REPLY_HANDLER_HANDSHAKE);
	error = FUNC3(mpt, sizeof f_req, &f_req);
	if (error) {
		return(error);
	}
	error = FUNC2(mpt, sizeof (*freplp), freplp);
	return (error);
}