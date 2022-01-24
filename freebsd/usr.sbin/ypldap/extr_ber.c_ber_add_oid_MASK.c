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
typedef  int /*<<< orphan*/  u_int8_t ;
struct ber_oid {int dummy; } ;
struct ber_element {size_t be_len; int be_free; int /*<<< orphan*/ * be_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  BER_TYPE_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (struct ber_element*) ; 
 struct ber_element* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ber_element*,struct ber_element*) ; 
 size_t FUNC3 (struct ber_oid*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int,size_t) ; 

struct ber_element *
FUNC5(struct ber_element *prev, struct ber_oid *o)
{
	struct ber_element	*elm;
	u_int8_t		*buf;
	size_t			 len;

	if ((elm = FUNC1(BER_TYPE_OBJECT)) == NULL)
		return (NULL);

	if ((len = FUNC3(o, NULL, 0)) == 0)
		goto fail;

	if ((buf = FUNC4(1, len)) == NULL)
		goto fail;

	elm->be_val = buf;
	elm->be_len = len;
	elm->be_free = 1;

	if (FUNC3(o, buf, len) != len)
		goto fail;

	FUNC2(prev, elm);

	return (elm);

 fail:
	FUNC0(elm);
	return (NULL);
}