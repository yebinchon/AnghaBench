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
 int /*<<< orphan*/  FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int FUNC4 (struct adapter*,struct sbuf*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sbuf*) ; 
 struct sbuf* FUNC6 (struct sbuf*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

void
FUNC7(struct adapter *sc)
{
	int rc;
	struct sbuf sb;

	if (FUNC6(&sb, NULL, 4096, SBUF_AUTOEXTEND) != &sb)
		return;
	rc = FUNC4(sc, &sb, M_NOWAIT);
	if (rc == 0) {
		rc = FUNC5(&sb);
		if (rc == 0) {
			FUNC1(LOG_DEBUG, "%s: device log follows.\n%s",
		    		FUNC0(sc->dev), FUNC2(&sb));
		}
	}
	FUNC3(&sb);
}