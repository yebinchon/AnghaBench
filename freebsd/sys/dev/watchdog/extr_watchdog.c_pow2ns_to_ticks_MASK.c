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
struct timeval {int dummy; } ;
struct timespec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct timespec*) ; 
 int FUNC2 (struct timeval*) ; 

__attribute__((used)) static int
FUNC3(int pow2ns)
{
	struct timeval tv;
	struct timespec ts;

	FUNC1(pow2ns, &ts);
	FUNC0(&tv, &ts);
	return (FUNC2(&tv));
}