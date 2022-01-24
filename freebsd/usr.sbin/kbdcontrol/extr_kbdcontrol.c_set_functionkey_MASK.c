#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int keynum; int /*<<< orphan*/  keydef; int /*<<< orphan*/  flen; } ;
typedef  TYPE_1__ fkeyarg_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAXFK ; 
 int NUM_FKEYS ; 
 int /*<<< orphan*/  SETFKEY ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 

__attribute__((used)) static void
FUNC8(char *keynumstr, char *string)
{
	fkeyarg_t fkey;

	if (!FUNC3(keynumstr, "load") && !FUNC3(string, "default")) {
		FUNC2();
		return;
	}
	fkey.keynum = FUNC0(keynumstr);
	if (fkey.keynum < 1 || fkey.keynum > NUM_FKEYS) {
		FUNC7("function key number must be between 1 and %d",
			NUM_FKEYS);
		return;
	}
	if ((fkey.flen = FUNC4(string)) > MAXFK) {
		FUNC7("function key string too long (%d > %d)",
			fkey.flen, MAXFK);
		return;
	}
	FUNC5(fkey.keydef, string, MAXFK);
	fkey.keynum -= 1;
	if (FUNC1(0, SETFKEY, &fkey) < 0)
		FUNC6("setting function key");
}