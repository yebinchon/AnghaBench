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
typedef  scalar_t__ u_int ;

/* Variables and functions */
 scalar_t__ X_CIDXFLUSHTHRESH_128 ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static u_int
FUNC2(int qsize)
{
	u_int fthresh;

	while (!FUNC1(qsize))
		qsize++;
	fthresh = FUNC0(qsize);
	if (fthresh > X_CIDXFLUSHTHRESH_128)
		fthresh = X_CIDXFLUSHTHRESH_128;

	return (fthresh);
}