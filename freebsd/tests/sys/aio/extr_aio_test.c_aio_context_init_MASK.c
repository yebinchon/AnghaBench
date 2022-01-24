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
struct aio_context {int ac_read_fd; int ac_write_fd; int ac_buflen; int /*<<< orphan*/  ac_seed; int /*<<< orphan*/  ac_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int BUFFER_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aio_context*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(struct aio_context *ac, int read_fd,
    int write_fd, int buflen)
{

	FUNC0(buflen <= BUFFER_MAX,
	    "aio_context_init: buffer too large (%d > %d)",
	    buflen, BUFFER_MAX);
	FUNC3(ac, sizeof(*ac));
	ac->ac_read_fd = read_fd;
	ac->ac_write_fd = write_fd;
	ac->ac_buflen = buflen;
	FUNC5();
	ac->ac_seed = FUNC4();
	FUNC1(ac->ac_buffer, buflen, ac->ac_seed);
	FUNC0(FUNC2(ac->ac_buffer, buflen,
	    ac->ac_seed) != 0, "aio_test_buffer: internal error");
}