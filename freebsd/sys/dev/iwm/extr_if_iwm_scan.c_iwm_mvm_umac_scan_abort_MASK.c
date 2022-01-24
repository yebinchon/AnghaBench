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
struct iwm_umac_scan_abort {int /*<<< orphan*/  uid; } ;
struct iwm_softc {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  IWM_ALWAYS_LONG_GROUP ; 
 int /*<<< orphan*/  IWM_DEBUG_SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  IWM_SCAN_ABORT_UMAC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwm_umac_scan_abort*) ; 

__attribute__((used)) static int
FUNC4(struct iwm_softc *sc)
{
	struct iwm_umac_scan_abort cmd = {};
	int uid, ret;

	uid = 0;
	cmd.uid = FUNC1(uid);

	FUNC0(sc, IWM_DEBUG_SCAN, "Sending scan abort, uid %u\n", uid);

	ret = FUNC3(sc,
				   FUNC2(IWM_SCAN_ABORT_UMAC,
					      IWM_ALWAYS_LONG_GROUP, 0),
				   0, sizeof(cmd), &cmd);

	return ret;
}