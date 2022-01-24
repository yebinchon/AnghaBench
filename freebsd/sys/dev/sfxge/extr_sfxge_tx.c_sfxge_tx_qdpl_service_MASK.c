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
struct sfxge_txq {int /*<<< orphan*/  blocked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sfxge_txq*) ; 
 scalar_t__ FUNC1 (struct sfxge_txq*) ; 
 int /*<<< orphan*/  FUNC2 (struct sfxge_txq*) ; 
 scalar_t__ FUNC3 (struct sfxge_txq*) ; 
 int /*<<< orphan*/  FUNC4 (struct sfxge_txq*) ; 
 int /*<<< orphan*/  FUNC5 (struct sfxge_txq*) ; 

__attribute__((used)) static void
FUNC6(struct sfxge_txq *txq)
{
	FUNC0(txq);

	do {
		if (FUNC3(txq))
			FUNC5(txq);

		if (!txq->blocked)
			FUNC4(txq);

		FUNC2(txq);
	} while (FUNC3(txq) &&
		 FUNC1(txq));
}