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
 int FUNC0 (int) ; 

__attribute__((used)) static int
FUNC1(int bin)
{
	int out = 0;
	int tmp;

	tmp = bin % 100;
	out += FUNC0(tmp) * 1;
	bin = bin / 100;

	tmp = bin % 100;
	out += FUNC0(tmp) * 100;
	bin = bin / 100;

	tmp = bin % 100;
	out += FUNC0(tmp) * 10000;

	return (out);
}