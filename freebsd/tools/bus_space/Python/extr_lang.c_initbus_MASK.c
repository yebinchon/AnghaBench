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
typedef  int /*<<< orphan*/  PyMODINIT_FUNC ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bus_docstr ; 
 int /*<<< orphan*/  bus_methods ; 
 int /*<<< orphan*/  busdma_docstr ; 
 int /*<<< orphan*/  busdma_methods ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

PyMODINIT_FUNC
FUNC2(void)
{
	PyObject *bus, *busdma;

	bus = FUNC0("bus", bus_methods, bus_docstr);
	busdma = FUNC0("busdma", busdma_methods, busdma_docstr);
	(void)FUNC1(bus, busdma);
}