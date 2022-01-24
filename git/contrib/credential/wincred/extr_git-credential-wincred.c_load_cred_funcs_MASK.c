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
typedef  scalar_t__ CredWriteWT ;
typedef  scalar_t__ CredFreeT ;
typedef  scalar_t__ CredEnumerateWT ;
typedef  scalar_t__ CredDeleteWT ;

/* Variables and functions */
 scalar_t__ CredDeleteW ; 
 scalar_t__ CredEnumerateW ; 
 scalar_t__ CredFree ; 
 scalar_t__ CredWriteW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LOAD_LIBRARY_SEARCH_SYSTEM32 ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  advapi ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
	/* load DLLs */
	advapi = FUNC1("advapi32.dll", NULL,
				LOAD_LIBRARY_SEARCH_SYSTEM32);
	if (!advapi)
		FUNC2("failed to load advapi32.dll");

	/* get function pointers */
	CredWriteW = (CredWriteWT)FUNC0(advapi, "CredWriteW");
	CredEnumerateW = (CredEnumerateWT)FUNC0(advapi,
	    "CredEnumerateW");
	CredFree = (CredFreeT)FUNC0(advapi, "CredFree");
	CredDeleteW = (CredDeleteWT)FUNC0(advapi, "CredDeleteW");
	if (!CredWriteW || !CredEnumerateW || !CredFree || !CredDeleteW)
		FUNC2("failed to load functions");
}