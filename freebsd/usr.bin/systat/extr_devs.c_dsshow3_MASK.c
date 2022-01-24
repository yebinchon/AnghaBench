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
struct statinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,struct statinfo*,struct statinfo*) ; 

__attribute__((used)) static void
FUNC1(int diskcol, int diskrow, int dn, int lc, struct statinfo *now, struct statinfo *then)
{
	FUNC0(diskcol, diskrow, dn, lc, now, then);
}