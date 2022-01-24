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
struct mbuf {int dummy; } ;
struct krb5_key_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct krb5_key_state const*,struct mbuf*,size_t,size_t,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(const struct krb5_key_state *ks, struct mbuf *inout,
    size_t skip, size_t len, void *ivec, size_t ivlen)
{

	FUNC0(ks, inout, skip, len, ivec, 0);
}