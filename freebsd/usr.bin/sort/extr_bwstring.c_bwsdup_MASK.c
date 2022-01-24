#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  wstr; int /*<<< orphan*/  cstr; } ;
struct bwstring {int /*<<< orphan*/  len; TYPE_1__ data; } ;

/* Variables and functions */
 int MB_CUR_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct bwstring* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct bwstring *
FUNC3(const struct bwstring *s)
{

	if (s == NULL)
		return (NULL);
	else {
		struct bwstring *ret = FUNC1(s->len);

		if (MB_CUR_MAX == 1)
			FUNC2(ret->data.cstr, s->data.cstr, (s->len));
		else
			FUNC2(ret->data.wstr, s->data.wstr,
			    FUNC0(s->len));

		return (ret);
	}
}