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
typedef  enum ssh_variant { ____Placeholder_ssh_variant } ssh_variant ;

/* Variables and functions */
 int VARIANT_AUTO ; 
 int VARIANT_PLINK ; 
 int VARIANT_PUTTY ; 
 int VARIANT_SIMPLE ; 
 int VARIANT_SSH ; 
 int VARIANT_TORTOISEPLINK ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static void FUNC3(enum ssh_variant *ssh_variant)
{
	const char *variant = FUNC0("GIT_SSH_VARIANT");

	if (!variant && FUNC1("ssh.variant", &variant))
		return;

	if (!FUNC2(variant, "auto"))
		*ssh_variant = VARIANT_AUTO;
	else if (!FUNC2(variant, "plink"))
		*ssh_variant = VARIANT_PLINK;
	else if (!FUNC2(variant, "putty"))
		*ssh_variant = VARIANT_PUTTY;
	else if (!FUNC2(variant, "tortoiseplink"))
		*ssh_variant = VARIANT_TORTOISEPLINK;
	else if (!FUNC2(variant, "simple"))
		*ssh_variant = VARIANT_SIMPLE;
	else
		*ssh_variant = VARIANT_SSH;
}