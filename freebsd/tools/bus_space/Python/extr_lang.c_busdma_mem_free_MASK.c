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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_IOError ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static PyObject *
FUNC4(PyObject *self, PyObject *args)
{
	int error, mdid;

	if (!FUNC0(args, "i", &mdid))
		return (NULL);
	error = FUNC2(mdid);
	if (error) {
		FUNC1(PyExc_IOError, FUNC3(error));
		return (NULL);
	}
	Py_RETURN_NONE;
}