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
struct krb5_key_state {struct aes_state* ks_priv; } ;
struct aes_state {scalar_t__ as_session_aes; scalar_t__ as_session_sha1; int /*<<< orphan*/  as_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_GSSAPI ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct aes_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct krb5_key_state *ks)
{
	struct aes_state *as = ks->ks_priv;

	if (as->as_session_aes != 0)
		FUNC0(as->as_session_aes);
	if (as->as_session_sha1 != 0)
		FUNC0(as->as_session_sha1);
	FUNC2(&as->as_lock);
	FUNC1(ks->ks_priv, M_GSSAPI);
}