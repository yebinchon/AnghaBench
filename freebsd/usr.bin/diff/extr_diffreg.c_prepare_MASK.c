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
struct line {int value; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIZE_MAX ; 
 struct line** file ; 
 size_t* len ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct line* FUNC3 (size_t,int) ; 
 struct line* FUNC4 (struct line*,size_t,int) ; 

__attribute__((used)) static void
FUNC5(int i, FILE *fd, size_t filesize, int flags)
{
	struct line *p;
	int h;
	size_t sz, j;

	FUNC2(fd);

	sz = FUNC0(filesize, SIZE_MAX) / 25;
	if (sz < 100)
		sz = 100;

	p = FUNC3(sz + 3, sizeof(*p));
	for (j = 0; (h = FUNC1(fd, flags));) {
		if (j == sz) {
			sz = sz * 3 / 2;
			p = FUNC4(p, sz + 3, sizeof(*p));
		}
		p[++j].value = h;
	}
	len[i] = j;
	file[i] = p;
}