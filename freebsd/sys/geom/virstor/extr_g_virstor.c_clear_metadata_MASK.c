#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct g_virstor_component {TYPE_2__* gcons; } ;
struct TYPE_5__ {TYPE_1__* provider; } ;
struct TYPE_4__ {scalar_t__ sectorsize; scalar_t__ mediasize; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LVL_INFO ; 
 int /*<<< orphan*/  M_GVIRSTOR ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (TYPE_2__*,scalar_t__,char*,scalar_t__) ; 
 char* FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct g_virstor_component *comp)
{
	char *buf;
	int error;

	FUNC0(LVL_INFO, "Clearing metadata on %s",
	    comp->gcons->provider->name);
	FUNC3();
	error = FUNC2(comp->gcons, 0, 1, 0);
	if (error != 0)
		return (error);
	buf = FUNC5(comp->gcons->provider->sectorsize, M_GVIRSTOR,
	    M_WAITOK | M_ZERO);
	error = FUNC4(comp->gcons,
	    comp->gcons->provider->mediasize -
	    comp->gcons->provider->sectorsize,
	    buf,
	    comp->gcons->provider->sectorsize);
	FUNC1(buf, M_GVIRSTOR);
	FUNC2(comp->gcons, 0, -1, 0);
	return (error);
}