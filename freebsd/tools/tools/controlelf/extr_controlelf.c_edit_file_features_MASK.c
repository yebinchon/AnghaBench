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
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  features ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool
FUNC5(Elf *elf, int phcount, int fd, char *val)
{
	u_int32_t features;
	u_int64_t off;

	if (!FUNC1(elf, phcount, fd, &features, &off)) {
		FUNC3("NT_FREEBSD_FEATURE_CTL note not found");
		return (false);
	}

	if (!FUNC0(val, &features))
		return (false);

	if (FUNC2(fd, off, SEEK_SET) == -1 ||
	    FUNC4(fd, &features, sizeof(features)) <
	    (ssize_t)sizeof(features)) {
		FUNC3("error writing feature value");
		return (false);
	}
	return (true);
}