#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct krb5_key_state {struct krb5_key_state* ks_key; TYPE_1__* ks_class; int /*<<< orphan*/  ks_refs; } ;
struct TYPE_2__ {int /*<<< orphan*/  ec_keylen; int /*<<< orphan*/  (* ec_destroy ) (struct krb5_key_state*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  M_GSSAPI ; 
 int /*<<< orphan*/  FUNC0 (struct krb5_key_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct krb5_key_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct krb5_key_state*) ; 

void
FUNC4(struct krb5_key_state *ks)
{

	if (FUNC2(&ks->ks_refs)) {
		ks->ks_class->ec_destroy(ks);
		FUNC0(ks->ks_key, ks->ks_class->ec_keylen);
		FUNC1(ks->ks_key, M_GSSAPI);
		FUNC1(ks, M_GSSAPI);
	}
}