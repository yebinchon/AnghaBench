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
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static int
FUNC2(void)
{
	char resp;

	if (FUNC1(STDOUT_FILENO, &resp, (size_t)1) != 1) {
		FUNC0("lost connection in noresponse()");
		/*NOTREACHED*/
	}
	if (resp == '\0')
		return(0);
	return(1);
}