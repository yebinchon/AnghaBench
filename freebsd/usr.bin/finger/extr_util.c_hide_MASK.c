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
struct stat {int dummy; } ;
struct passwd {char* pw_dir; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int MAXPATHLEN ; 
 char* _PATH_NOFINGER ; 
 scalar_t__ invoker_root ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC1 (char*,struct stat*) ; 

int
FUNC2(struct passwd *pw)
{
	struct stat st;
	char buf[MAXPATHLEN];

	if (invoker_root || !pw->pw_dir)
		return 0;

	FUNC0(buf, sizeof(buf), "%s/%s", pw->pw_dir, _PATH_NOFINGER);

	if (FUNC1(buf, &st) == 0)
		return 1;

	return 0;
}