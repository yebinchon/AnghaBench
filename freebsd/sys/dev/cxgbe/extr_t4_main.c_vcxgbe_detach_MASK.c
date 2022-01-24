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
struct vi_info {int /*<<< orphan*/  viid; TYPE_1__* pi; } ;
struct adapter {int /*<<< orphan*/  pf; int /*<<< orphan*/  mbox; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct adapter* adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vi_info*) ; 
 struct vi_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct vi_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct vi_info *vi;
	struct adapter *sc;

	vi = FUNC1(dev);
	sc = vi->pi->adapter;

	FUNC2(sc, vi);

	FUNC0(vi);
	FUNC4(sc, sc->mbox, sc->pf, 0, vi->viid);

	FUNC3(sc, 0);

	return (0);
}