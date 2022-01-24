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
struct dcons_softc {int dummy; } ;
struct consdev {scalar_t__ cn_arg; } ;

/* Variables and functions */
 int FUNC0 (struct dcons_softc*) ; 

__attribute__((used)) static int
FUNC1(struct consdev *cp)
{
	struct dcons_softc *dc = (struct dcons_softc *)cp->cn_arg;
	return (FUNC0(dc));
}