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
struct query_state {int /*<<< orphan*/ * process_func; scalar_t__ kevent_watermark; scalar_t__ mdata; int /*<<< orphan*/  config_entry; } ;
typedef  int /*<<< orphan*/  cache_mp_write_session ;

/* Variables and functions */
 int /*<<< orphan*/  CELT_MULTIPART ; 
 scalar_t__ INVALID_CACHE_MP_WRITE_SESSION ; 
 int /*<<< orphan*/  FUNC0 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct query_state *qstate)
{
	FUNC0(on_mp_write_session_close_notification);
	FUNC3(qstate->config_entry, CELT_MULTIPART);
	FUNC2((cache_mp_write_session)qstate->mdata);
	FUNC4(qstate->config_entry, CELT_MULTIPART);
	qstate->mdata = INVALID_CACHE_MP_WRITE_SESSION;

	qstate->kevent_watermark = 0;
	qstate->process_func = NULL;
	FUNC1(on_mp_write_session_close_notification);
	return (0);
}