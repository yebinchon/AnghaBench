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
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ STDIN_FILENO ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

__attribute__((used)) static bool
FUNC3(void)
{
	fd_set rfds;
	struct timeval tv;

	FUNC1(&rfds);
	FUNC0(STDIN_FILENO, &rfds);
	tv.tv_sec = 0;
	tv.tv_usec = 0;
	if (FUNC2(STDIN_FILENO + 1, &rfds, NULL, NULL, &tv) > 0) {
		return (true);
	} else {
		return (false);
	}
}