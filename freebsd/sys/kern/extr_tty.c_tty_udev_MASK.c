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
struct tty {scalar_t__ t_dev; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  NODEV ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

dev_t
FUNC1(struct tty *tp)
{

	if (tp->t_dev)
		return (FUNC0(tp->t_dev));
	else
		return (NODEV);
}