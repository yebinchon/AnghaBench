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
typedef  scalar_t__ u_long ;
typedef  int (* kreadfn_t ) (scalar_t__,void*,size_t) ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ errno ; 
 scalar_t__ live ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC1 (char const*,void*,size_t*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static int
FUNC3(const char *sysctlname, u_long off, void *stats,
    size_t len, kreadfn_t kreadfn, int zero)
{
	int error;

	if (live) {
		FUNC0(stats, 0, len);
		if (zero)
			error = FUNC1(sysctlname, NULL, NULL, stats,
			    len);
		else
			error = FUNC1(sysctlname, stats, &len, NULL, 0);
		if (error == -1 && errno != ENOENT)
			FUNC2("sysctl %s", sysctlname);
	} else {
		if (off == 0)
			return (1);
		error = kreadfn(off, stats, len);
	}
	return (error);
}