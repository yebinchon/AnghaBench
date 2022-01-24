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
struct ber_element {size_t be_len; int be_free; void* be_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  BER_TYPE_BITSTRING ; 
 int /*<<< orphan*/  FUNC0 (void const*,void*,size_t) ; 
 struct ber_element* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ber_element*,struct ber_element*) ; 
 void* FUNC3 (int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

struct ber_element *
FUNC5(struct ber_element *prev, const void *v0, size_t len)
{
	struct ber_element *elm;
	void *v;

	if ((v = FUNC3(1, len)) == NULL)
		return NULL;
	if ((elm = FUNC1(BER_TYPE_BITSTRING)) == NULL) {
		FUNC4(v);
		return NULL;
	}

	FUNC0(v0, v, len);
	elm->be_val = v;
	elm->be_len = len;
	elm->be_free = 1;		/* free string on cleanup */

	FUNC2(prev, elm);

	return elm;
}