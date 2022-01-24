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
typedef  int ssize_t ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  ofw_t ;
typedef  int /*<<< orphan*/  ihandle_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char*,size_t) ; 

__attribute__((used)) static ssize_t
FUNC2(ofw_t ofw, ihandle_t instance, char *buf, size_t len)
{
	phandle_t phandle;

	phandle = FUNC0(instance);
	if (phandle == -1)
		return (-1);

	return (FUNC1(phandle, buf, len));
}