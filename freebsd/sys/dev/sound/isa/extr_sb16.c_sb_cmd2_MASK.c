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
struct sb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 scalar_t__ FUNC1 (struct sb_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sb_info*) ; 

__attribute__((used)) static int
FUNC3(struct sb_info *sb, u_char cmd, int val)
{
	int r;

#if 0
    	printf("sb_cmd2: %x, %x\n", cmd, val);
#endif
	FUNC2(sb);
	r = 0;
    	if (FUNC1(sb, cmd)) {
		if (FUNC1(sb, val & 0xff)) {
			if (FUNC1(sb, (val >> 8) & 0xff)) {
				r = 1;
			}
		}
    	}

	return r;
}