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
typedef  int /*<<< orphan*/  u_int ;

/* Variables and functions */
 int /*<<< orphan*/  BFLAG ; 
 int /*<<< orphan*/  IFLAG ; 
 int /*<<< orphan*/  KFLAG ; 
 int /*<<< orphan*/  MFLAG ; 
 int /*<<< orphan*/  NFLAG ; 
 int /*<<< orphan*/  PFLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RFLAG ; 
 int /*<<< orphan*/  SFLAG ; 
 int /*<<< orphan*/  UFLAG ; 
 int /*<<< orphan*/  VFLAG ; 
 int /*<<< orphan*/  arch ; 
 int /*<<< orphan*/  buildid ; 
 int /*<<< orphan*/  hostname ; 
 int /*<<< orphan*/  ident ; 
 int /*<<< orphan*/  kernvers ; 
 int /*<<< orphan*/  platform ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  release ; 
 int /*<<< orphan*/  sysname ; 
 int /*<<< orphan*/  uservers ; 
 int /*<<< orphan*/  version ; 

__attribute__((used)) static void
FUNC2(u_int flags)
{
	FUNC0(flags, SFLAG, sysname);
	FUNC0(flags, NFLAG, hostname);
	FUNC0(flags, RFLAG, release);
	FUNC0(flags, VFLAG, version);
	FUNC0(flags, MFLAG, platform);
	FUNC0(flags, PFLAG, arch);
	FUNC0(flags, IFLAG, ident);
	FUNC0(flags, KFLAG, kernvers);
	FUNC0(flags, UFLAG, uservers);
	FUNC0(flags, BFLAG, buildid);
	FUNC1("\n");
}