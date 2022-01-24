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
typedef  int /*<<< orphan*/  tmp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 char* FUNC1 (int) ; 

__attribute__((used)) static const char *
FUNC2(int sig)
{
	static char tmp[32];
	const char *signame;

	signame = FUNC1(sig);
	if (signame == NULL) {
		FUNC0(tmp, sizeof(tmp), "%d", sig);
		signame = tmp;
	}
	return (signame);
}