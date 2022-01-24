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
struct malloc_type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t,size_t) ; 
 void* FUNC1 (size_t,struct malloc_type*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,size_t) ; 

void *
FUNC3(size_t nmemb, size_t size, struct malloc_type *type, int flags)
{

	if (FUNC0(nmemb, size))
		FUNC2("mallocarray: %zu * %zu overflowed", nmemb, size);

	return (FUNC1(size * nmemb, type, flags));
}