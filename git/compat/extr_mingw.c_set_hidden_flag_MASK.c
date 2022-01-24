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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int DWORD ;

/* Variables and functions */
 int FILE_ATTRIBUTE_HIDDEN ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 

__attribute__((used)) static int FUNC4(const wchar_t *path, int set)
{
	DWORD original = FUNC0(path), modified;
	if (set)
		modified = original | FILE_ATTRIBUTE_HIDDEN;
	else
		modified = original & ~FILE_ATTRIBUTE_HIDDEN;
	if (original == modified || FUNC2(path, modified))
		return 0;
	errno = FUNC3(FUNC1());
	return -1;
}