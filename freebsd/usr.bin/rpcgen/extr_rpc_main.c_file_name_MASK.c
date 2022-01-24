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
 int /*<<< orphan*/  F_OK ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*,char const*) ; 

__attribute__((used)) static const char *
FUNC2(const char *file, const char *ext)
{
	char *temp;
	temp = FUNC1(file, ext);

	if (FUNC0(temp, F_OK) != -1)
		return (temp);
	else
		return (" ");

}