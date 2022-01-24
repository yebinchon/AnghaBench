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
typedef  scalar_t__ uint32_t ;
struct urndis_softc {int dummy; } ;
struct rndis_halt_req {void* rm_rid; void* rm_len; void* rm_type; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int REMOTE_NDIS_HALT_MSG ; 
 scalar_t__ RNDIS_STATUS_SUCCESS ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (struct urndis_softc*,struct rndis_halt_req*,int) ; 

__attribute__((used)) static uint32_t
FUNC4(struct urndis_softc *sc)
{
	struct rndis_halt_req msg;
	uint32_t rval;

	msg.rm_type = FUNC1(REMOTE_NDIS_HALT_MSG);
	msg.rm_len = FUNC1(sizeof(msg));
	msg.rm_rid = 0;

	FUNC0("type %u len %u rid %u\n",
	    FUNC2(msg.rm_type),
	    FUNC2(msg.rm_len),
	    FUNC2(msg.rm_rid));

	rval = FUNC3(sc, &msg, sizeof(msg));

	if (rval != RNDIS_STATUS_SUCCESS)
		FUNC0("halt failed\n");

	return (rval);
}