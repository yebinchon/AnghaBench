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
struct krb5_key_state {void* ks_key; int /*<<< orphan*/  ks_refs; struct krb5_encryption_class const* ks_class; } ;
struct krb5_encryption_class {int ec_keylen; int /*<<< orphan*/  (* ec_init ) (struct krb5_key_state*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  M_GSSAPI ; 
 int /*<<< orphan*/  M_WAITOK ; 
 void* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct krb5_key_state*) ; 

struct krb5_key_state *
FUNC3(const struct krb5_encryption_class *ec)
{
	struct krb5_key_state *ks;

	ks = FUNC0(sizeof(struct krb5_key_state), M_GSSAPI, M_WAITOK);
	ks->ks_class = ec;
	FUNC1(&ks->ks_refs, 1);
	ks->ks_key = FUNC0(ec->ec_keylen, M_GSSAPI, M_WAITOK);
	ec->ec_init(ks);

	return (ks);
}