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
typedef  int /*<<< orphan*/  iconv_t ;

/* Variables and functions */
 scalar_t__ EBADF ; 
 scalar_t__ errno ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(void)
{
	iconv_t	cd = (iconv_t)-1;

	errno = 0;
	return ((FUNC0(cd, NULL, 0, NULL, 0) == (size_t)-1 && errno == EBADF) ? 0 : 1);
}