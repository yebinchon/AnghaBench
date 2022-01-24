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
struct aes_state {int /*<<< orphan*/  as_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_GSSAPI ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct aes_state* FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct krb5_key_state *ks)
{
	struct aes_state *as;

	as = FUNC0(sizeof(struct aes_state), M_GSSAPI, M_WAITOK|M_ZERO);
	FUNC1(&as->as_lock, "gss aes lock", NULL, MTX_DEF);
	ks->ks_priv = as;
}