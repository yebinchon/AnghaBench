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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (char const*,char) ; 
 char* FUNC3 (int) ; 

__attribute__((used)) static char *
FUNC4(const char *path, const char *ext)
{
	char *res;
	const char *p;
	const char *file;

	if ((file = FUNC2(path, '/')) == NULL)
		file = path;
	else
		file++;
	res = FUNC3(FUNC1(file) + FUNC1(ext) + 1);
	p = FUNC2(file, '.');
	if (p == NULL) {
		p = file + FUNC1(file);
	}
	(void) FUNC0(res, file);
	(void) FUNC0(res + (p - file), ext);
	return (res);
}