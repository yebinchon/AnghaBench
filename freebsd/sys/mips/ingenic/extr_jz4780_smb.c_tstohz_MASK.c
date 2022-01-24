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
 int /*<<< orphan*/  FUNC0 (struct timeval*,struct timespec const*) ; 
 int FUNC1 (struct timeval*) ; 

__attribute__((used)) static inline int
FUNC2(const struct timespec *tsp)
{
	struct timeval tv;

	FUNC0(&tv, tsp);
	return (FUNC1(&tv));
}