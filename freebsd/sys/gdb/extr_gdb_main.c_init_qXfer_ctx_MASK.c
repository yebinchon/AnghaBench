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
typedef  int uintmax_t ;
struct qXfer_context {int flushed; int lastmessage; int /*<<< orphan*/  sb; int /*<<< orphan*/  xfer_buf; scalar_t__ last_offset; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ GDB_BUFSZ ; 
 int /*<<< orphan*/  SBUF_FIXEDLEN ; 
 int /*<<< orphan*/  qXfer_drain ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct qXfer_context*) ; 
 int FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(struct qXfer_context *qx, uintmax_t len)
{

	/* Protocol (max) length field includes framing overhead. */
	if (len < sizeof("$m#nn"))
		return (ENOSPC);

	len -= 4;
	len = FUNC2(len, GDB_BUFSZ - 1);

	qx->last_offset = 0;
	qx->flushed = false;
	qx->lastmessage = false;
	FUNC0(&qx->sb, qx->xfer_buf, len, SBUF_FIXEDLEN);
	FUNC1(&qx->sb, qXfer_drain, qx);
	return (0);
}