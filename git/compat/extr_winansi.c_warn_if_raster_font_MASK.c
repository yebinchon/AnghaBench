#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  fontFamily ;
typedef  int /*<<< orphan*/  cfi ;
struct TYPE_7__ {int /*<<< orphan*/  dll; } ;
struct TYPE_6__ {int cbSize; int FontFamily; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  TYPE_1__ CONSOLE_FONT_INFOEX ;

/* Variables and functions */
 int /*<<< orphan*/  BOOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__ (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*),int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  HANDLE ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 scalar_t__ FUNC2 (scalar_t__ (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*)) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  PCONSOLE_FONT_INFOEX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int TMPF_TRUETYPE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  console ; 
 TYPE_2__ kernel32 ; 
 int /*<<< orphan*/  non_ascii_used ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(void)
{
	DWORD fontFamily = 0;
	FUNC0(kernel32.dll, BOOL, GetCurrentConsoleFontEx,
			HANDLE, BOOL, PCONSOLE_FONT_INFOEX);

	/* don't bother if output was ascii only */
	if (!non_ascii_used)
		return;

	/* GetCurrentConsoleFontEx is available since Vista */
	if (FUNC2(GetCurrentConsoleFontEx)) {
		CONSOLE_FONT_INFOEX cfi;
		cfi.cbSize = sizeof(cfi);
		if (FUNC1(console, 0, &cfi))
			fontFamily = cfi.FontFamily;
	} else {
		/* pre-Vista: check default console font in registry */
		HKEY hkey;
		if (ERROR_SUCCESS == FUNC4(HKEY_CURRENT_USER, "Console",
				0, KEY_READ, &hkey)) {
			DWORD size = sizeof(fontFamily);
			FUNC5(hkey, "FontFamily", NULL, NULL,
					(LPVOID) &fontFamily, &size);
			FUNC3(hkey);
		}
	}

	if (!(fontFamily & TMPF_TRUETYPE)) {
		const wchar_t *msg = L"\nWarning: Your console font probably "
			L"doesn\'t support Unicode. If you experience strange "
			L"characters in the output, consider switching to a "
			L"TrueType font such as Consolas!\n";
		DWORD dummy;
		FUNC6(console, msg, FUNC7(msg), &dummy, NULL);
	}
}