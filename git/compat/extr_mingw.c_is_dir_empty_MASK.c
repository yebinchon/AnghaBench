#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_4__ {int /*<<< orphan*/  cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATAW ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_NO_MORE_FILES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC7(const wchar_t *wpath)
{
	WIN32_FIND_DATAW findbuf;
	HANDLE handle;
	wchar_t wbuf[MAX_PATH + 2];
	FUNC6(wbuf, wpath);
	FUNC4(wbuf, L"\\*");
	handle = FUNC1(wbuf, &findbuf);
	if (handle == INVALID_HANDLE_VALUE)
		return FUNC3() == ERROR_NO_MORE_FILES;

	while (!FUNC5(findbuf.cFileName, L".") ||
			!FUNC5(findbuf.cFileName, L".."))
		if (!FUNC2(handle, &findbuf)) {
			DWORD err = FUNC3();
			FUNC0(handle);
			return err == ERROR_NO_MORE_FILES;
		}
	FUNC0(handle);
	return 0;
}