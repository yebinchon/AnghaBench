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
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{

	FUNC1(
"Usage: cal [general options] [-hjy] [[month] year]\n"
"       cal [general options] [-hj] [-m month] [year]\n"
"       ncal [general options] [-hJjpwy] [-s country_code] [[month] year]\n"
"       ncal [general options] [-hJeo] [year]\n"
"General options: [-NC3] [-A months] [-B months]\n"
"For debug the highlighting: [-H yyyy-mm-dd] [-d yyyy-mm]\n",
	    stderr);
	FUNC0(EX_USAGE);
}