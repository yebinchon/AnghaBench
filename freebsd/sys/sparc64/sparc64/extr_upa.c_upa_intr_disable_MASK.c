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
struct upa_icarg {int /*<<< orphan*/  uica_imr; int /*<<< orphan*/  uica_sc; } ;
struct intr_vector {int /*<<< orphan*/  iv_vec; struct upa_icarg* iv_icarg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct intr_vector *iv = arg;
	struct upa_icarg *uica = iv->iv_icarg;

	FUNC1(uica->uica_sc, uica->uica_imr, 0x0, iv->iv_vec);
	(void)FUNC0(uica->uica_sc, uica->uica_imr, 0x0);
}