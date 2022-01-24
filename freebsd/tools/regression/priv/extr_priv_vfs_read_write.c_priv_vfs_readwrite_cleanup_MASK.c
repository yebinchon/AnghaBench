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
struct test {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  fpath_none ; 
 scalar_t__ fpath_none_initialized ; 
 int /*<<< orphan*/  fpath_read ; 
 scalar_t__ fpath_read_initialized ; 
 int /*<<< orphan*/  fpath_readwrite ; 
 scalar_t__ fpath_readwrite_initialized ; 
 int /*<<< orphan*/  fpath_write ; 
 scalar_t__ fpath_write_initialized ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1(int asroot, int injail, struct test *test)
{

	if (fpath_none_initialized) {
		(void)FUNC0(fpath_none);
		fpath_none_initialized = 0;
	}
	if (fpath_read_initialized) {
		(void)FUNC0(fpath_read);
		fpath_read_initialized = 0;
	}
	if (fpath_write_initialized) {
		(void)FUNC0(fpath_write);
		fpath_write_initialized = 0;
	}
	if (fpath_readwrite_initialized) {
		(void)FUNC0(fpath_readwrite);
		fpath_readwrite_initialized = 0;
	}
}