#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct mpt_softc {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  serno; } ;
typedef  TYPE_1__ request_t ;
typedef  int /*<<< orphan*/  MSG_DEFAULT_REPLY ;

/* Variables and functions */
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct mpt_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*,char*,...) ; 

__attribute__((used)) static int
FUNC2(struct mpt_softc *mpt, request_t *req,
	uint32_t reply_desc, MSG_DEFAULT_REPLY *reply_frame)
{

	FUNC1(mpt,
	    "Default Handler Called: req=%p:%u reply_descriptor=%x frame=%p\n",
	    req, req->serno, reply_desc, reply_frame);

	if (reply_frame != NULL)
		FUNC0(mpt, reply_frame);

	FUNC1(mpt, "Reply Frame Ignored\n");

	return (/*free_reply*/TRUE);
}