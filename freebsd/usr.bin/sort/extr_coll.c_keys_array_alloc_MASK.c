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
struct keys_array {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct keys_array*,int /*<<< orphan*/ ,size_t) ; 
 struct keys_array* FUNC2 (size_t) ; 

struct keys_array *
FUNC3(void)
{
	struct keys_array *ka;
	size_t sz;

	sz = FUNC0();
	ka = FUNC2(sz);
	FUNC1(ka, 0, sz);

	return (ka);
}