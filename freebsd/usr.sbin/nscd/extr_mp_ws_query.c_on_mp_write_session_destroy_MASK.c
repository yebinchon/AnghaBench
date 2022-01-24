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
struct query_state {int /*<<< orphan*/  config_entry; int /*<<< orphan*/ * mdata; int /*<<< orphan*/  response; int /*<<< orphan*/  request; } ;
typedef  int /*<<< orphan*/  cache_mp_write_session ;

/* Variables and functions */
 int /*<<< orphan*/  CELT_MULTIPART ; 
 int /*<<< orphan*/  FUNC0 (void (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct query_state *qstate)
{

	FUNC0(on_mp_write_session_destroy);
	FUNC5(&qstate->request);
	FUNC5(&qstate->response);

	if (qstate->mdata != NULL) {
		FUNC3(qstate->config_entry, CELT_MULTIPART);
		FUNC2(
	    		(cache_mp_write_session)qstate->mdata);
		FUNC4(qstate->config_entry,
			CELT_MULTIPART);
	}
	FUNC1(on_mp_write_session_destroy);
}