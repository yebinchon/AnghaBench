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
struct consdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  console_sc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static void
FUNC1(struct consdev *cp, int c)
{
	unsigned char ch = c;
	FUNC0(console_sc, &ch, 1);
}