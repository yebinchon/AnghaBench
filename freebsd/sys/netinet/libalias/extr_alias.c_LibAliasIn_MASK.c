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
struct libalias {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC1 (struct libalias*) ; 
 int FUNC2 (struct libalias*,char*,int) ; 

int
FUNC3(struct libalias *la, char *ptr, int maxpacketsize)
{
	int res;

	FUNC0(la);
	res = FUNC2(la, ptr, maxpacketsize);
	FUNC1(la);
	return (res);
}