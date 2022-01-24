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
struct psycho_desc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  psycho_compats ; 
 struct psycho_desc* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  psycho_models ; 

__attribute__((used)) static const struct psycho_desc *
FUNC3(device_t dev)
{
	const struct psycho_desc *rv;

	rv = FUNC2(psycho_models, FUNC1(dev));
	if (rv == NULL)
		rv = FUNC2(psycho_compats,
		    FUNC0(dev));
	return (rv);
}