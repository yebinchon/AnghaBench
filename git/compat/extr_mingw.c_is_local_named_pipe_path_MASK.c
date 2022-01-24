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
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC2(const char *filename)
{
	return (FUNC0(filename[0]) &&
		FUNC0(filename[1]) &&
		filename[2] == '.'  &&
		FUNC0(filename[3]) &&
		!FUNC1(filename+4, "pipe", 4) &&
		FUNC0(filename[8]) &&
		filename[9]);
}