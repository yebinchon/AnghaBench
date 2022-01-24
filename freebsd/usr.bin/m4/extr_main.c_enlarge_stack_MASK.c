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
typedef  int /*<<< orphan*/  stae ;

/* Variables and functions */
 int STACKMAX ; 
 int /*<<< orphan*/  mstack ; 
 int /*<<< orphan*/  sstack ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,char*,unsigned long) ; 

__attribute__((used)) static void
FUNC2(void)
{
	STACKMAX += STACKMAX/2;
	mstack = FUNC1(mstack, STACKMAX, sizeof(stae),
	    "Evaluation stack overflow (%lu)",
	    (unsigned long)STACKMAX);
	sstack = FUNC0(sstack, STACKMAX,
	    "Evaluation stack overflow (%lu)",
	    (unsigned long)STACKMAX);
}