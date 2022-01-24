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
struct krb5_key_state {TYPE_1__* ks_class; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ec_random_to_key ) (struct krb5_key_state*,void const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct krb5_key_state*,void const*) ; 

__attribute__((used)) static __inline void
FUNC1(struct krb5_key_state *ks, const void *keydata)
{

	ks->ks_class->ec_random_to_key(ks, keydata);
}