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
struct blame_scoreboard {int dummy; } ;

/* Variables and functions */
 int OUTPUT_SHOW_NAME ; 
 int OUTPUT_SHOW_NUMBER ; 
 int OUTPUT_SHOW_SCORE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct blame_scoreboard*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct blame_scoreboard*,int) ; 

__attribute__((used)) static void FUNC3(struct blame_scoreboard *sb, int baa)
{
	int opt = OUTPUT_SHOW_SCORE | OUTPUT_SHOW_NUMBER | OUTPUT_SHOW_NAME;
	FUNC1(sb, &opt);
	FUNC2(sb, opt);
	FUNC0("Baa %d!", baa);
}