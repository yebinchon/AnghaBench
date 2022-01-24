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
struct TYPE_3__ {char* UserName; int /*<<< orphan*/  TargetName; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  TYPE_1__ CREDENTIALW ;

/* Variables and functions */
 char* host ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 char* path ; 
 char* protocol ; 
 scalar_t__ FUNC2 (scalar_t__,char*) ; 
 scalar_t__ wusername ; 

__attribute__((used)) static int FUNC3(const CREDENTIALW *cred)
{
	LPCWSTR target = cred->TargetName;
	if (wusername && FUNC2(wusername, cred->UserName ? cred->UserName : L""))
		return 0;

	return FUNC0(&target, L"git", L":") &&
		FUNC0(&target, protocol, L"://") &&
		FUNC1(&target, wusername, L"@") &&
		FUNC0(&target, host, L"/") &&
		FUNC0(&target, path, L"");
}