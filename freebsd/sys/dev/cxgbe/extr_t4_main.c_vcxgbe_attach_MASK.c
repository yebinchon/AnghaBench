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
struct vi_info {int /*<<< orphan*/  viid; struct port_info* pi; } ;
struct port_info {struct adapter* adapter; } ;
struct adapter {int /*<<< orphan*/  pf; int /*<<< orphan*/  mbox; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int INTR_OK ; 
 int SLEEP_OK ; 
 int FUNC0 (struct adapter*,struct port_info*,struct vi_info*) ; 
 int FUNC1 (struct adapter*,struct vi_info*,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct vi_info*) ; 
 struct vi_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct vi_info *vi;
	struct port_info *pi;
	struct adapter *sc;
	int rc;

	vi = FUNC3(dev);
	pi = vi->pi;
	sc = pi->adapter;

	rc = FUNC1(sc, vi, SLEEP_OK | INTR_OK, "t4via");
	if (rc)
		return (rc);
	rc = FUNC0(sc, pi, vi);
	FUNC4(sc, 0);
	if (rc)
		return (rc);

	rc = FUNC2(dev, vi);
	if (rc) {
		FUNC5(sc, sc->mbox, sc->pf, 0, vi->viid);
		return (rc);
	}
	return (0);
}