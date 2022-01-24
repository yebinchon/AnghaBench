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
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(int fd, const char *start, int rec, int prop, const char *pmatch,
    int raw, int str)
{
	phandle_t n;

	n = start == NULL ? FUNC2(fd) : FUNC1(fd, start);
	FUNC0(fd, n, 0, rec, prop, pmatch, raw, str);
}