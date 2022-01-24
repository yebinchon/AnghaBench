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
struct sbuf {int dummy; } ;
struct adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  SBUF_AUTOEXTEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct adapter*,struct sbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*) ; 
 int FUNC5 (struct sbuf*) ; 
 struct sbuf* FUNC6 (struct sbuf*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

bool
FUNC7(struct adapter *sc, int arg, bool verbose)
{
	struct sbuf sb;
	int rc;

	if (FUNC6(&sb, NULL, 4096, SBUF_AUTOEXTEND) != &sb)
		return (false);
	rc = FUNC2(sc, &sb, M_NOWAIT);
	if (rc == 0) {
		rc = FUNC5(&sb);
		if (rc == 0) {
			FUNC1(LOG_DEBUG, "%s: CIM LA dump follows.\n%s",
		    		FUNC0(sc->dev), FUNC3(&sb));
		}
	}
	FUNC4(&sb);
	return (false);
}