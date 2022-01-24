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
struct timespec {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CLOCK_DBG_READ ; 
 int /*<<< orphan*/  FUNC0 (struct timespec*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(device_t dev, int rw)
{
	struct timespec now;

	FUNC2(&now);
	FUNC1(dev, "%s at ", (rw & CLOCK_DBG_READ) ? "read " : "write");
	FUNC0(&now, 9);
	FUNC3(": "); 
}