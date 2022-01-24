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
struct ttydevsw {int dummy; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 struct tty* FUNC0 (struct ttydevsw*,void*,int /*<<< orphan*/ *) ; 

struct tty *
FUNC1(struct ttydevsw *tsw, void *sc)
{

	return (FUNC0(tsw, sc, NULL));
}