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
struct date {int dummy; } ;

/* Variables and functions */
 struct date* FUNC0 (int,struct date*) ; 
 struct date* FUNC1 (int,struct date*) ; 
 int nswitch ; 

__attribute__((used)) static struct date *
FUNC2(int nd, struct date *d)
{

	if (nswitch < nd)
		return (FUNC0(nd, d));
	else
		return (FUNC1(nd, d));
}