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
struct snp_softc {int /*<<< orphan*/  snp_outpoll; int /*<<< orphan*/  snp_outwait; int /*<<< orphan*/  snp_outq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct snp_softc* FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,size_t) ; 

__attribute__((used)) static void
FUNC4(struct tty *tp, const void *buf, size_t len)
{
	struct snp_softc *ss = FUNC2(tp);

	FUNC3(&ss->snp_outq, buf, len);

	FUNC0(&ss->snp_outwait);
	FUNC1(&ss->snp_outpoll);
}