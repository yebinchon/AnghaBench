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
 int /*<<< orphan*/  M_WAITOK ; 
 char* FUNC0 (char const*,struct malloc_type*,int /*<<< orphan*/ ) ; 

char *
FUNC1(const char *string, struct malloc_type *type)
{

	return (FUNC0(string, type, M_WAITOK));
}