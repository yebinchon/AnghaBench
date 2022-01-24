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
typedef  int /*<<< orphan*/  token ;
typedef  int cell_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*,int*,int) ; 
 int /*<<< orphan*/  rtas ; 
 int /*<<< orphan*/  FUNC1 () ; 

cell_t
FUNC2(const char *method)
{
	cell_t token;
	
	if (!FUNC1())
		return (-1);

	if (FUNC0(rtas, method, &token, sizeof(token)) == -1)
		return (-1);

	return (token);
}