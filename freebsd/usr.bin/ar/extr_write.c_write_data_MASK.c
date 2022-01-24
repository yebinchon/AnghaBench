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
struct bsdar {int dummy; } ;
struct archive {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 (struct archive*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 scalar_t__ FUNC2 (struct archive*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct bsdar*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void const*,size_t) ; 

__attribute__((used)) static void
FUNC5(struct bsdar *bsdar, struct archive *a, const void *buf, size_t s)
{
	ssize_t written;

	FUNC4(buf, s);
	while (s > 0) {
		written = FUNC2(a, buf, s);
		if (written < 0)
			FUNC3(bsdar, EX_SOFTWARE, FUNC0(a), "%s",
			    FUNC1(a));
		buf = (const char *)buf + written;
		s -= written;
	}
}