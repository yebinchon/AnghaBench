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
typedef  int u_char ;
struct ess_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ess_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

__attribute__((used)) static int
FUNC3(struct ess_info *sc, u_char cmd, int val)
{
    	FUNC0(FUNC2("ess_cmd1: %x, %x\n", cmd, val));
    	if (FUNC1(sc, cmd)) {
		return FUNC1(sc, val & 0xff);
    	} else return 0;
}