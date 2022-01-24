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
struct icl_module {struct icl_module* im_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_modules; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  M_ICL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct icl_module*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct icl_module*,int /*<<< orphan*/ ) ; 
 struct icl_module* FUNC4 (char const*,int,int) ; 
 int /*<<< orphan*/  im_next ; 
 TYPE_1__* sc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(const char *offload, bool rdma)
{
	struct icl_module *im;

	FUNC5(&sc->sc_lock);
	im = FUNC4(offload, rdma, true);
	if (im == NULL) {
		FUNC1("offload \"%s\" not registered", offload);
		FUNC6(&sc->sc_lock);
		return (ENXIO);
	}

	FUNC2(&sc->sc_modules, im, im_next);
	FUNC6(&sc->sc_lock);

	FUNC3(im->im_name, M_ICL);
	FUNC3(im, M_ICL);

	FUNC0("offload \"%s\" unregistered", offload);
	return (0);
}