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
struct msginfo {int msgmax; int msgmni; int msgmnb; int msgtql; int msgssz; int msgseg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1(struct msginfo local_msginfo)
{

	FUNC0("msginfo:\n");
	FUNC0("\tmsgmax: %12d\t(max characters in a message)\n",
	    local_msginfo.msgmax);
	FUNC0("\tmsgmni: %12d\t(# of message queues)\n",
	    local_msginfo.msgmni);
	FUNC0("\tmsgmnb: %12d\t(max characters in a message queue)\n",
	    local_msginfo.msgmnb);
	FUNC0("\tmsgtql: %12d\t(max # of messages in system)\n",
	    local_msginfo.msgtql);
	FUNC0("\tmsgssz: %12d\t(size of a message segment)\n",
	    local_msginfo.msgssz);
	FUNC0("\tmsgseg: %12d\t(# of message segments in system)\n\n",
	    local_msginfo.msgseg);
}