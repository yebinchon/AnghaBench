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
struct libalias {int deleteAllLinks; } ;
struct alias_link {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alias_link*) ; 
 int /*<<< orphan*/  FUNC1 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC2 (struct libalias*) ; 

void
FUNC3(struct libalias *la, struct alias_link *lnk)
{
/* This is a dangerous function to put in the API,
   because an invalid pointer can crash the program. */

	FUNC1(la);
	la->deleteAllLinks = 1;
	FUNC0(lnk);
	la->deleteAllLinks = 0;
	FUNC2(la);
}