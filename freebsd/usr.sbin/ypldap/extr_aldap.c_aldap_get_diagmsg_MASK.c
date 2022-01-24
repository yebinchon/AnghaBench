#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * diagmsg; } ;
struct TYPE_4__ {TYPE_1__ res; } ;
struct aldap_message {TYPE_2__ body; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char**) ; 
 char* FUNC1 (char*) ; 

char *
FUNC2(struct aldap_message *msg)
{
	char *s;

	if (msg->body.res.diagmsg == NULL)
		return NULL;

	if (FUNC0(msg->body.res.diagmsg, &s) == -1)
		return NULL;

	return FUNC1(s);
}