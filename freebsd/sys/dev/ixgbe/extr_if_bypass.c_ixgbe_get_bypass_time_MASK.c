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
typedef  int u32 ;
struct timespec {int tv_sec; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec*) ; 

__attribute__((used)) static void
FUNC2(u32 *year, u32 *sec)
{
	struct timespec current;

	*year = 1970;           /* time starts at 01/01/1970 */
	FUNC1(&current);
	*sec = current.tv_sec;

	while(*sec > FUNC0(*year)) {
		*sec -= FUNC0(*year);
		(*year)++;
	}
}