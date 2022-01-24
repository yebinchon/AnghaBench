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
 scalar_t__ FUNC0 (unsigned char) ; 
 char FUNC1 (unsigned char) ; 

__attribute__((used)) static unsigned int FUNC2(unsigned char c)
{
	return FUNC0(c) ? c - '0' : FUNC1(c) - 'A' + 10;
}