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
struct unrhdr {int dummy; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 struct unrhdr* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct unrhdr*,int,int,struct mtx*) ; 

struct unrhdr *
FUNC2(int low, int high, struct mtx *mutex)
{
	struct unrhdr *uh;

	uh = FUNC0(sizeof *uh);
	FUNC1(uh, low, high, mutex);
	return (uh);
}