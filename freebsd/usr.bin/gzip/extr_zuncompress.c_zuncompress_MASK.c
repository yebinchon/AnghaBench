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
typedef  int off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  BUFSIZE ; 
 char* compressed_pre ; 
 size_t compressed_prelen ; 
 int FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int,int,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ tflag ; 
 int total_compressed_bytes ; 

__attribute__((used)) static off_t
FUNC4(FILE *in, FILE *out, char *pre, size_t prelen,
	    off_t *compressed_bytes)
{
	off_t bin, bout = 0;
	char *buf;

	buf = FUNC3(BUFSIZE);
	if (buf == NULL)
		return -1;

	/* XXX */
	compressed_prelen = prelen;
	if (prelen != 0)
		compressed_pre = pre;
	else
		compressed_pre = NULL;

	while ((bin = FUNC0(buf, 1, BUFSIZE, in)) != 0) {
		if (tflag == 0 && (off_t)FUNC2(buf, 1, bin, out) != bin) {
			FUNC1(buf);
			return -1;
		}
		bout += bin;
	}

	if (compressed_bytes)
		*compressed_bytes = total_compressed_bytes;

	FUNC1(buf);
	return bout;
}