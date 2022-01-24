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
struct intr_vector {int /*<<< orphan*/  iv_mid; int /*<<< orphan*/  iv_vec; struct fhc_icarg* iv_icarg; } ;
struct fhc_icarg {int /*<<< orphan*/  fica_memres; } ;

/* Variables and functions */
 int /*<<< orphan*/  FHC_IMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct intr_vector *iv = arg;
	struct fhc_icarg *fica = iv->iv_icarg;

	FUNC2(fica->fica_memres, FHC_IMAP,
	    FUNC0(iv->iv_vec, iv->iv_mid));
	(void)FUNC1(fica->fica_memres, FHC_IMAP);
}