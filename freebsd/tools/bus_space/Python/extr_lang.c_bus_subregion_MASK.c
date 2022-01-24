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
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int*,long*,long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_IOError ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 int FUNC3 (int,long,long) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC5(PyObject *self, PyObject *args)
{
	long ofs, sz;
	int rid0, rid;

	if (!FUNC0(args, "ill", &rid0, &ofs, &sz))
		return (NULL);
	rid = FUNC3(rid0, ofs, sz);
	if (rid == -1) {
		FUNC1(PyExc_IOError, FUNC4(errno));
		return (NULL);
	}
	return (FUNC2("i", rid));
}