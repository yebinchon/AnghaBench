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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_sec; } ;

/* Variables and functions */
 int TargetTime ; 
 struct tm* FUNC0 (int*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(int secres) {
 	struct tm *tm;

	TargetTime = FUNC1((time_t*)0);
	if (secres != 0) {
		TargetTime += 1;
	} else {
		tm = FUNC0(&TargetTime);
		TargetTime += (60 - tm->tm_sec);
	}
}