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
struct statfs {long f_files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,struct statfs*) ; 

long
FUNC2(char *path)
{
	struct statfs	buf;
	int	error;

	error = FUNC1(path, &buf);
	if (error) {
		FUNC0("statfs");
		return (-1);
	}

	return (buf.f_files);
}