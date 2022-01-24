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
struct stat {size_t st_size; } ;
struct executable {char* x_buf; size_t x_len; int /*<<< orphan*/  x_path; int /*<<< orphan*/  x_fp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char*,size_t,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,struct stat*) ; 
 char* FUNC5 (size_t) ; 

__attribute__((used)) static void
FUNC6(struct executable *x)
{
	int error, fd;
	struct stat sb;
	char *buf;
	size_t nread, len;

	fd = FUNC2(x->x_fp);

	error = FUNC4(fd, &sb);
	if (error != 0)
		FUNC0(1, "%s: fstat", x->x_path);

	len = sb.st_size;
	if (len <= 0)
		FUNC1(1, "%s: file is empty", x->x_path);

	buf = FUNC5(len);
	if (buf == NULL)
		FUNC0(1, "%s: cannot malloc %zd bytes", x->x_path, len);

	nread = FUNC3(buf, len, 1, x->x_fp);
	if (nread != 1)
		FUNC0(1, "%s: fread", x->x_path);

	x->x_buf = buf;
	x->x_len = len;
}