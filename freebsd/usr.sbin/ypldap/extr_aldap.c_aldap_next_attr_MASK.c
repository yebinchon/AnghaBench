#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ber_element {int dummy; } ;
struct TYPE_6__ {TYPE_3__* iter; } ;
struct TYPE_7__ {TYPE_1__ search; } ;
struct aldap_message {TYPE_2__ body; } ;
struct TYPE_8__ {struct TYPE_8__* be_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_3__*) ; 
 char** FUNC1 (struct ber_element*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,char*,char**,struct ber_element**,struct ber_element**) ; 
 char* FUNC4 (char*) ; 

int
FUNC5(struct aldap_message *msg, char **outkey, char ***outvalues)
{
	struct ber_element *a, *b;
	char *key;
	char **ret;

	if (msg->body.search.iter == NULL)
		goto notfound;

	FUNC0("attr", msg->body.search.iter);

	if (FUNC2(msg->body.search.iter) == 0)
		goto notfound;

	if (FUNC3(msg->body.search.iter, "{s(e)}e", &key, &a, &b)
	    != 0)
		goto fail;

	msg->body.search.iter = msg->body.search.iter->be_next;

	if ((ret = FUNC1(a)) == NULL)
		goto fail;

	(*outvalues) = ret;
	(*outkey) = FUNC4(key);

	return (1);
fail:
notfound:
	(*outkey) = NULL;
	(*outvalues) = NULL;
	return (-1);
}