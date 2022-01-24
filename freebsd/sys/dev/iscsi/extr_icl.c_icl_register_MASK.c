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
struct icl_module {int im_iser; int im_priority; int (* im_limits ) (struct icl_drv_limits*) ;struct icl_conn* (* im_new_conn ) (char const*,struct mtx*) ;int /*<<< orphan*/  im_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_modules; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  M_ICL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct icl_module*,int /*<<< orphan*/ ) ; 
 struct icl_module* FUNC3 (char const*,int,int) ; 
 int /*<<< orphan*/  im_next ; 
 struct icl_module* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* sc ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(const char *offload, bool iser, int priority,
    int (*limits)(struct icl_drv_limits *),
    struct icl_conn *(*new_conn)(const char *, struct mtx *))
{
	struct icl_module *im;

	FUNC6(&sc->sc_lock);
	im = FUNC3(offload, iser, true);
	if (im != NULL) {
		FUNC1("offload \"%s\" already registered", offload);
		FUNC7(&sc->sc_lock);
		return (EBUSY);
	}

	im = FUNC4(sizeof(*im), M_ICL, M_ZERO | M_WAITOK);
	im->im_name = FUNC5(offload, M_ICL);
	im->im_iser = iser;
	im->im_priority = priority;
	im->im_limits = limits;
	im->im_new_conn = new_conn;

	FUNC2(&sc->sc_modules, im, im_next);
	FUNC7(&sc->sc_lock);

	FUNC0("offload \"%s\" registered", offload);
	return (0);
}