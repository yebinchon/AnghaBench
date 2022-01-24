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
struct resource {int dummy; } ;
struct pccard_ivar {struct pccard_function* pf; } ;
struct pccard_function {int /*<<< orphan*/  sc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct pccard_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
#define  SYS_RES_IOPORT 128 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pccard_function*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 

__attribute__((used)) static int
FUNC6(device_t brdev, device_t child, int type, int rid,
    struct resource *r)
{
	struct pccard_ivar *ivar = FUNC0(child);
	struct pccard_function *pf = ivar->pf;

	switch(type) {
	case SYS_RES_IOPORT:
		/*
		 * We need to adjust IOBASE[01] and IOSIZE if we're an MFC
		 * card.
		 */
		if (FUNC2(pf->sc))
			FUNC3(pf, FUNC5(r), 0,
			    FUNC4(r));
		break;
	default:
		break;
	}
	return (FUNC1(brdev, child, type, rid, r));
}