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
 int FUNC0 (void*,char const**,size_t*,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 size_t FUNC2 (char const*) ; 

char *
FUNC3(void *handle, char *dst, const char *src)
{
	char *p = dst;
	size_t inlen, outlen;
	int error;

	if (handle == NULL) {
		FUNC1(dst, src);
		return dst;
	}
	inlen = outlen = FUNC2(src);
	error = FUNC0(handle, NULL, NULL, &p, &outlen);
	if (error)
		return NULL;
	error = FUNC0(handle, &src, &inlen, &p, &outlen);
	if (error)
		return NULL;
	*p = 0;
	return dst;
}