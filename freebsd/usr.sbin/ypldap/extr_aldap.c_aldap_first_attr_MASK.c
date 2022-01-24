#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ber_element {int dummy; } ;
struct TYPE_4__ {TYPE_3__* attrs; int /*<<< orphan*/  iter; } ;
struct TYPE_5__ {TYPE_1__ search; } ;
struct aldap_message {TYPE_2__ body; } ;
struct TYPE_6__ {int /*<<< orphan*/  be_next; } ;

/* Variables and functions */
 char** FUNC0 (struct ber_element*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,char*,char**,struct ber_element**,struct ber_element**) ; 
 char* FUNC2 (char*) ; 

int
FUNC3(struct aldap_message *msg, char **outkey, char ***outvalues)
{
	struct ber_element *b, *c;
	char *key;
	char **ret;

	if (msg->body.search.attrs == NULL)
		goto fail;

	if (FUNC1(msg->body.search.attrs, "{s(e)}e",
	    &key, &b, &c) != 0)
		goto fail;

	msg->body.search.iter = msg->body.search.attrs->be_next;

	if ((ret = FUNC0(b)) == NULL)
		goto fail;

	(*outvalues) = ret;
	(*outkey) = FUNC2(key);

	return (1);
fail:
	(*outkey) = NULL;
	(*outvalues) = NULL;
	return (-1);
}