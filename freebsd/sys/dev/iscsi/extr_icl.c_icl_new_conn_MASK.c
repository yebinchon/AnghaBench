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
struct mtx {int dummy; } ;
struct icl_module {struct icl_conn* (* im_new_conn ) (char const*,struct mtx*) ;} ;
struct icl_conn {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sc_lock; } ;

/* Variables and functions */
 struct icl_module* FUNC0 (char const*,int,int) ; 
 TYPE_1__* sc ; 
 struct icl_conn* FUNC1 (char const*,struct mtx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct icl_conn *
FUNC4(const char *offload, bool iser, const char *name, struct mtx *lock)
{
	struct icl_module *im;
	struct icl_conn *ic;

	FUNC2(&sc->sc_lock);
	im = FUNC0(offload, iser, false);
	if (im == NULL) {
		FUNC3(&sc->sc_lock);
		return (NULL);
	}

	ic = im->im_new_conn(name, lock);
	FUNC3(&sc->sc_lock);

	return (ic);
}