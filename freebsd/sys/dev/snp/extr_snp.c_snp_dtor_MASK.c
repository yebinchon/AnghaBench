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
struct snp_softc {int /*<<< orphan*/  snp_outwait; int /*<<< orphan*/  snp_outq; struct tty* snp_tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SNP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *data)
{
	struct snp_softc *ss = data;
	struct tty *tp;

	tp = ss->snp_tty;
	if (tp != NULL) {
		FUNC2(tp);
		FUNC4(&ss->snp_outq);
		FUNC3(tp);
	}

	FUNC0(&ss->snp_outwait);
	FUNC1(ss, M_SNP);
}