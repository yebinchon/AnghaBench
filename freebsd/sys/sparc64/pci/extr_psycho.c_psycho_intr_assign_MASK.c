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
struct psycho_icarg {int /*<<< orphan*/  pica_map; int /*<<< orphan*/  pica_sc; } ;
struct intr_vector {int /*<<< orphan*/  iv_mid; struct psycho_icarg* iv_icarg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct intr_vector *iv = arg;
	struct psycho_icarg *pica = iv->iv_icarg;

	FUNC2(pica->pica_sc, pica->pica_map, FUNC0(
	    FUNC1(pica->pica_sc, pica->pica_map), iv->iv_mid));
}