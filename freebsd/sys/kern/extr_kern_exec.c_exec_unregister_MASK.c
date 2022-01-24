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
struct execsw {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct execsw const** execsw ; 
 int /*<<< orphan*/  FUNC0 (struct execsw const**,int /*<<< orphan*/ ) ; 
 struct execsw** FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3(const struct execsw *execsw_arg)
{
	const struct execsw **es, **xs, **newexecsw;
	int count = 1;

	if (execsw == NULL)
		FUNC2("unregister with no handlers left?\n");

	for (es = execsw; *es; es++) {
		if (*es == execsw_arg)
			break;
	}
	if (*es == NULL)
		return (ENOENT);
	for (es = execsw; *es; es++)
		if (*es != execsw_arg)
			count++;
	newexecsw = FUNC1(count * sizeof(*es), M_TEMP, M_WAITOK);
	xs = newexecsw;
	for (es = execsw; *es; es++)
		if (*es != execsw_arg)
			*xs++ = *es;
	*xs = NULL;
	if (execsw)
		FUNC0(execsw, M_TEMP);
	execsw = newexecsw;
	return (0);
}