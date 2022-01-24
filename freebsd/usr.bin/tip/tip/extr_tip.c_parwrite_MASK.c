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
 scalar_t__ EIO ; 
 scalar_t__ ENXIO ; 
 scalar_t__ bits8 ; 
 scalar_t__ errno ; 
 char* partab ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int,char*,size_t) ; 

void
FUNC3(int fd, char *buf, size_t n)
{
	size_t i;
	char *bp;

	bp = buf;
	if (bits8 == 0)
		for (i = 0; i < n; i++) {
			*bp = partab[(*bp) & 0177];
			bp++;
		}
	if (FUNC2(fd, buf, n) < 0) {
		if (errno == EIO || errno == ENXIO)
			FUNC1("Lost carrier.");
		/* this is questionable */
		FUNC0("write");
	}
}