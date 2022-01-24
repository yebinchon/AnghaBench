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
 int /*<<< orphan*/  ELF_NOTE_ROUNDSIZE ; 
 int /*<<< orphan*/  FUNC0 (void const*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 size_t FUNC2 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC3(const void *src, void *dst, size_t len)
{
	size_t padded_len;

	padded_len = FUNC2(len, ELF_NOTE_ROUNDSIZE);
	if (dst != NULL) {
		FUNC0(src, dst, len);
		FUNC1((char *)dst + len, padded_len - len);
	}
	return (padded_len);
}