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
 size_t MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(char *anchor)
{
	size_t siz = MAXPATHLEN;
	int i;

	if (anchor[0] == '/') {
		char *path;
		int off;

		path = anchor;
		off = 1;
		while (*++path == '/')
			off++;
		FUNC0(path, anchor, siz - off);
		FUNC1(anchor + siz - off, 0, off);
	}
	if (anchor[siz - 1])
		return (-1);
	for (i = FUNC2(anchor); i < siz; i++)
		if (anchor[i])
			return (-1);
	return (0);
}