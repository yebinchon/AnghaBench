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
struct my_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MY_FLAG_DELAYTIMEO ; 
 int /*<<< orphan*/  FUNC0 (struct my_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct my_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct my_softc *sc;

	sc = arg;
	FUNC0(sc);
	FUNC1(sc, MY_FLAG_DELAYTIMEO, 1);
}