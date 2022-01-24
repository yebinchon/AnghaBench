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
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 scalar_t__ OPEN_ALWAYS ; 
 scalar_t__ OPEN_EXISTING ; 
 int /*<<< orphan*/  O_BINARY ; 
 scalar_t__ STD_ERROR_HANDLE ; 
 scalar_t__ STD_OUTPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int FUNC7 (intptr_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC11(const wchar_t *key, DWORD std_id, int fd,
				      DWORD desired_access, DWORD flags)
{
	DWORD create_flag = fd ? OPEN_ALWAYS : OPEN_EXISTING;
	wchar_t buf[MAX_PATH];
	DWORD max = FUNC0(buf);
	HANDLE handle;
	DWORD ret = FUNC3(key, buf, max);

	if (!ret || ret >= max)
		return;

	/* make sure this does not leak into child processes */
	FUNC5(key, NULL);
	if (!FUNC10(buf, L"off")) {
		FUNC8(fd);
		handle = FUNC4(std_id);
		if (handle != INVALID_HANDLE_VALUE)
			FUNC1(handle);
		return;
	}
	if (std_id == STD_ERROR_HANDLE && !FUNC10(buf, L"2>&1")) {
		handle = FUNC4(STD_OUTPUT_HANDLE);
		if (handle == INVALID_HANDLE_VALUE) {
			FUNC8(fd);
			handle = FUNC4(std_id);
			if (handle != INVALID_HANDLE_VALUE)
				FUNC1(handle);
		} else {
			int new_fd = FUNC7((intptr_t)handle, O_BINARY);
			FUNC6(std_id, handle);
			FUNC9(new_fd, fd);
			/* do *not* close the new_fd: that would close stdout */
		}
		return;
	}
	handle = FUNC2(buf, desired_access, 0, NULL, create_flag,
			     flags, NULL);
	if (handle != INVALID_HANDLE_VALUE) {
		int new_fd = FUNC7((intptr_t)handle, O_BINARY);
		FUNC6(std_id, handle);
		FUNC9(new_fd, fd);
		FUNC8(new_fd);
	}
}