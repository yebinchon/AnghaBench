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
struct sleepqueue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  sleepq_zone ; 
 struct sleepqueue* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct sleepqueue *
FUNC1(void)
{

	return (FUNC0(sleepq_zone, M_WAITOK));
}