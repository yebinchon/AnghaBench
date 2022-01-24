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
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,size_t) ; 
 size_t FUNC2 (char const*,size_t) ; 

__attribute__((used)) static __inline void
FUNC3(char *dst, size_t dst_size, const char *src, char pad)
{
	size_t len;

	len = FUNC2(src, dst_size);
	FUNC1(dst, pad, dst_size);
	FUNC0(dst, src, len);
}