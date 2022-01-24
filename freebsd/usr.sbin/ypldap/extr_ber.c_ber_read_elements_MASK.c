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
struct ber_element {int dummy; } ;
struct ber {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct ber_element*) ; 
 int /*<<< orphan*/  FUNC1 (struct ber_element*) ; 
 struct ber_element* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ber*,struct ber_element*) ; 

struct ber_element *
FUNC4(struct ber *ber, struct ber_element *elm)
{
	struct ber_element *root = elm;

	if (root == NULL) {
		if ((root = FUNC2(0)) == NULL)
			return NULL;
	}

	FUNC0("read ber elements, root %p\n", root);

	if (FUNC3(ber, root) == -1) {
		/* Cleanup if root was allocated by us */
		if (elm == NULL)
			FUNC1(root);
		return NULL;
	}

	return root;
}