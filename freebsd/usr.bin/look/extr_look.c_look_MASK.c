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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 unsigned char* FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned char*) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ *,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,unsigned char*) ; 

__attribute__((used)) static int
FUNC3(wchar_t *string, unsigned char *front, unsigned char *back)
{

	front = FUNC0(string, front, back);
	front = FUNC1(string, front, back);

	if (front)
		FUNC2(string, front, back);
	return (front ? 0 : 1);
}