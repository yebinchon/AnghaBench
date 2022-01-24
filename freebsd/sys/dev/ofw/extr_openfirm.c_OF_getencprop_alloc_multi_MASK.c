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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*,int,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

ssize_t
FUNC2(phandle_t package, const char *name, int elsz,
    void **buf)
{
	ssize_t retval;
	pcell_t *cell;
	int i;

	retval = FUNC0(package, name, elsz, buf);
	if (retval == -1)
		return (-1);

	cell = *buf;
	for (i = 0; i < retval * elsz / 4; i++)
		cell[i] = FUNC1(cell[i]);

	return (retval);
}