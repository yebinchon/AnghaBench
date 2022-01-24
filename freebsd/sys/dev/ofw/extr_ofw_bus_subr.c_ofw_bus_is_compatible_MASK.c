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
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int,char const*) ; 

int
FUNC4(device_t dev, const char *onecompat)
{
	phandle_t node;
	const char *compat;
	int len;

	if ((compat = FUNC1(dev)) == NULL)
		return (0);

	if ((node = FUNC2(dev)) == -1)
		return (0);

	/* Get total 'compatible' prop len */
	if ((len = FUNC0(node, "compatible")) <= 0)
		return (0);

	return (FUNC3(compat, len, onecompat));
}