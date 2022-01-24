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
struct timeval {int tv_sec; int tv_usec; } ;

/* Variables and functions */
 int FUNC0 (struct timeval*) ; 

__attribute__((used)) static __inline int FUNC1(int ms)
{
	int qlnx_hz;

	struct timeval t;

	t.tv_sec = ms / 1000;
	t.tv_usec = (ms % 1000) * 1000;

	qlnx_hz = FUNC0(&t);

	if (qlnx_hz < 0)
		qlnx_hz = 0x7fffffff;
	if (!qlnx_hz)
		qlnx_hz = 1;

	return (qlnx_hz);
}