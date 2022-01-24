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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (void*,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

void *
FUNC6(FILE *fp, off_t off, size_t len)
{
	int error;
	size_t nread;
	void *buf;

	error = FUNC3(fp, off, SEEK_SET);
	if (error != 0) {
		FUNC5("cannot seek to %jd", (uintmax_t)off);
		return (NULL);
	}

	buf = FUNC4(len);
	if (buf == NULL) {
		FUNC5("cannot malloc %zd bytes of memory", len);
		return (NULL);
	}

	nread = FUNC1(buf, len, 1, fp);
	if (nread != 1) {
		FUNC2(buf);
		if (FUNC0(fp) == 0)
			FUNC5("fread");
		return (NULL);
	}

	return (buf);
}