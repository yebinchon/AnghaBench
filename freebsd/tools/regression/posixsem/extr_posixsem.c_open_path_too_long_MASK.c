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
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char,int) ; 

__attribute__((used)) static void
FUNC4(void)
{
	char *page;

	page = FUNC2(MAXPATHLEN + 1);
	FUNC3(page, 'a', MAXPATHLEN);
	page[MAXPATHLEN] = '\0';
	FUNC1(page, O_RDONLY, 0777, 1, ENAMETOOLONG);
	FUNC0(page);
}