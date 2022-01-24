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

/* Variables and functions */
 int /*<<< orphan*/  BER_TYPE_SET ; 
 struct ber_element* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ber_element*,struct ber_element*) ; 

struct ber_element *
FUNC2(struct ber_element *prev)
{
	struct ber_element *elm;

	if ((elm = FUNC0(BER_TYPE_SET)) == NULL)
		return NULL;

	FUNC1(prev, elm);

	return elm;
}