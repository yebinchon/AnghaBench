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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_IOError ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC5(PyObject *self, PyObject *args)
{
	char *dev;
	u_long align, bndry, maxaddr, maxsz, maxsegsz;
	u_int nsegs, datarate, flags;
	int tid;

	if (!FUNC0(args, "skkkkIkII", &dev, &align, &bndry,
	    &maxaddr, &maxsz, &nsegs, &maxsegsz, &datarate, &flags))
		return (NULL);
	tid = FUNC3(dev, align, bndry, maxaddr, maxsz, nsegs,
	    maxsegsz, datarate, flags);
	if (tid == -1) {
		FUNC1(PyExc_IOError, FUNC4(errno));
		return (NULL);
	}
	return (FUNC2("i", tid));
}