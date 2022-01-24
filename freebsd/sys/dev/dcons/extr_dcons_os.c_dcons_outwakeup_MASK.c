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
struct tty {int dummy; } ;
struct dcons_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dcons_softc*,char) ; 
 struct dcons_softc* FUNC1 (struct tty*) ; 
 scalar_t__ FUNC2 (struct tty*,char*,int) ; 

__attribute__((used)) static void
FUNC3(struct tty *tp)
{
	struct dcons_softc *dc;
	char ch;

	dc = FUNC1(tp);

	while (FUNC2(tp, &ch, sizeof ch) != 0)
		FUNC0(dc, ch);
}