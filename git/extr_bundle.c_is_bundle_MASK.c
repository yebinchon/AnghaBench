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
struct bundle_header {int dummy; } ;
typedef  int /*<<< orphan*/  header ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bundle_header*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,struct bundle_header*,char const*) ; 

int FUNC4(const char *path, int quiet)
{
	struct bundle_header header;
	int fd = FUNC2(path, O_RDONLY);

	if (fd < 0)
		return 0;
	FUNC1(&header, 0, sizeof(header));
	fd = FUNC3(fd, &header, quiet ? NULL : path);
	if (fd >= 0)
		FUNC0(fd);
	return (fd >= 0);
}