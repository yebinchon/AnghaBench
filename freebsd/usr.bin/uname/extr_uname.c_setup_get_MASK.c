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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arch ; 
 int /*<<< orphan*/  buildid ; 
 int /*<<< orphan*/  hostname ; 
 int /*<<< orphan*/  ident ; 
 int /*<<< orphan*/  kernvers ; 
 int /*<<< orphan*/  platform ; 
 int /*<<< orphan*/  release ; 
 int /*<<< orphan*/  sysname ; 
 int /*<<< orphan*/  uservers ; 
 int /*<<< orphan*/  version ; 

__attribute__((used)) static void
FUNC1(void)
{
	FUNC0("s", sysname);
	FUNC0("n", hostname);
	FUNC0("r", release);
	FUNC0("v", version);
	FUNC0("m", platform);
	FUNC0("p", arch);
	FUNC0("i", ident);
	FUNC0("K", kernvers);
	FUNC0("U", uservers);
	FUNC0("b", buildid);
}