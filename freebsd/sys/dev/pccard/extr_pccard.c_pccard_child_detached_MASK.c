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
struct pccard_ivar {struct pccard_function* pf; } ;
struct pccard_function {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct pccard_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pccard_function*) ; 

__attribute__((used)) static void
FUNC2(device_t parent, device_t dev)
{
	struct pccard_ivar *ivar = FUNC0(dev);
	struct pccard_function *pf = ivar->pf;

	FUNC1(pf);
}