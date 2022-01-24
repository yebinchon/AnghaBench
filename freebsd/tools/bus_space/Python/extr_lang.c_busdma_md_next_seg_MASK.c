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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int*,int*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int) ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static PyObject *
FUNC3(PyObject *self, PyObject *args)
{
	int error, mdid, sid;

	if (!FUNC0(args, "ii", &mdid, &sid))
		return (NULL);
	sid = FUNC2(mdid, sid);
	if (sid == -1)
		Py_RETURN_NONE;
	return (FUNC1("i", sid));
}