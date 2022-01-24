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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 char* signature ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(FILE *file)
{
	if (!signature || !*signature)
		return;

	FUNC0(file, "-- \n%s", signature);
	if (signature[FUNC2(signature)-1] != '\n')
		FUNC1('\n', file);
	FUNC1('\n', file);
}