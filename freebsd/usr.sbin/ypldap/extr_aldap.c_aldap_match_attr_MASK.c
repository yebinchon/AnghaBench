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
struct ber_element {struct ber_element* be_next; } ;
struct TYPE_3__ {struct ber_element* attrs; } ;
struct TYPE_4__ {TYPE_1__ search; } ;
struct aldap_message {TYPE_2__ body; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct ber_element*) ; 
 char** FUNC1 (struct ber_element*) ; 
 scalar_t__ FUNC2 (struct ber_element*) ; 
 scalar_t__ FUNC3 (struct ber_element*,char*,char**,struct ber_element**) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

int
FUNC5(struct aldap_message *msg, char *inkey, char ***outvalues)
{
	struct ber_element *a, *b;
	char *descr = NULL;
	char **ret;

	if (msg->body.search.attrs == NULL)
		goto fail;

	FUNC0("attr", msg->body.search.attrs);

	for (a = msg->body.search.attrs;;) {
		if (a == NULL)
			goto notfound;
		if (FUNC2(a) == 0)
			goto notfound;
		if (FUNC3(a, "{s(e", &descr, &b) != 0)
			goto fail;
		if (FUNC4(descr, inkey) == 0)
			goto attrfound;
		a = a->be_next;
	}

attrfound:
	if ((ret = FUNC1(b)) == NULL)
		goto fail;

	(*outvalues) = ret;

	return (1);
fail:
notfound:
	(*outvalues) = NULL;
	return (-1);
}