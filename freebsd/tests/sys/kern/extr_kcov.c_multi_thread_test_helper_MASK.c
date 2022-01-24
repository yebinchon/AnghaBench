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
struct multi_thread_data {size_t mode; int /*<<< orphan*/  thread; int /*<<< orphan*/ * buf; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*,...) ; 
 int /*<<< orphan*/  KIOENABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 char** modes ; 
 size_t FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC6(void *ptr)
{
	struct multi_thread_data *data = ptr;

	FUNC0(FUNC3(data->fd, KIOENABLE, data->mode) == 0,
	    "Unable to enable kcov %s in thread %d",
	    data->mode < FUNC4(modes) ? modes[data->mode] : "unknown mode",
	    data->thread);

	FUNC2(&data->buf[0], 0);
	FUNC5(0);
	FUNC0(FUNC1(&data->buf[0]) != 0,
	    "No records found in thread %d", data->thread);

	return (NULL);
}