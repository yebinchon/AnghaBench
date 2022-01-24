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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int) ; 

__attribute__((used)) static PyObject *
FUNC2(PyObject *bus, PyObject *busdma)
{

	if (bus == NULL || busdma == NULL)
		return (NULL);

	FUNC0(busdma, "MD_BUS_SPACE", FUNC1("i", 0));
	FUNC0(busdma, "MD_PHYS_SPACE", FUNC1("i", 1));
	FUNC0(busdma, "MD_VIRT_SPACE", FUNC1("i", 2));

	FUNC0(busdma, "SYNC_PREREAD", FUNC1("i", 1));
	FUNC0(busdma, "SYNC_POSTREAD", FUNC1("i", 2));
	FUNC0(busdma, "SYNC_PREWRITE", FUNC1("i", 4));
	FUNC0(busdma, "SYNC_POSTWRITE", FUNC1("i", 8));

	FUNC0(bus, "dma", busdma);
	return (bus);
}