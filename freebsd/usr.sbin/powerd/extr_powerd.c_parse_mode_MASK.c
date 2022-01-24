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
 int MODE_ADAPTIVE ; 
 int MODE_HIADAPTIVE ; 
 int MODE_MAX ; 
 int MODE_MIN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static void
FUNC2(char *arg, int *mode, int ch)
{

	if (FUNC1(arg, "minimum") == 0 || FUNC1(arg, "min") == 0)
		*mode = MODE_MIN;
	else if (FUNC1(arg, "maximum") == 0 || FUNC1(arg, "max") == 0)
		*mode = MODE_MAX;
	else if (FUNC1(arg, "adaptive") == 0 || FUNC1(arg, "adp") == 0)
		*mode = MODE_ADAPTIVE;
	else if (FUNC1(arg, "hiadaptive") == 0 || FUNC1(arg, "hadp") == 0)
		*mode = MODE_HIADAPTIVE;
	else
		FUNC0(1, "bad option: -%c %s", (char)ch, optarg);
}