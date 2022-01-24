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
 int FALSE ; 
 int TRUE ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static int
FUNC2(int *s1, int *e1, int s2, int e2)
{
    if (*e1 < s2 || e2 < *s1)
	return FALSE;
    *s1 = FUNC0(*s1, s2);
    *e1 = FUNC1(*e1, e2);
    return TRUE;
}