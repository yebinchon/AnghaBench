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
typedef  int /*<<< orphan*/ * vm_object_t ;
struct ksyms_softc {int /*<<< orphan*/ * sc_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ksyms_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_KSYMS ; 
 int /*<<< orphan*/  FUNC1 (struct ksyms_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ksyms_mtx ; 
 int /*<<< orphan*/  sc_list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *data)
{
	struct ksyms_softc *sc;
	vm_object_t obj;

	sc = (struct ksyms_softc *)data;

	FUNC2(&ksyms_mtx);
	FUNC0(sc, sc_list);
	FUNC3(&ksyms_mtx);
	obj = sc->sc_obj;
	if (obj != NULL)
		FUNC4(obj);
	FUNC1(sc, M_KSYMS);
}