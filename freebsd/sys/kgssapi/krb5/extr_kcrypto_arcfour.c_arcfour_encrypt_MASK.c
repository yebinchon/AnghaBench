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
typedef  int /*<<< orphan*/  uint8_t ;
struct rc4_state {int dummy; } ;
struct mbuf {int dummy; } ;
struct krb5_key_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct krb5_key_state const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,size_t,size_t,int /*<<< orphan*/ ,struct rc4_state*) ; 
 int /*<<< orphan*/  rc4_crypt_int ; 
 int /*<<< orphan*/  FUNC3 (struct rc4_state*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(const struct krb5_key_state *ks, struct mbuf *inout,
    size_t skip, size_t len, void *ivec, size_t ivlen)
{
	struct rc4_state rs;
	uint8_t newkey[16];

	FUNC0(ks, 0, newkey);

	/*
	 * If we have an IV, then generate a new key from it using HMAC.
	 */
	if (ivec) {
		uint8_t kk[16];
		FUNC1(newkey, ivec, ivlen, kk);
		FUNC3(&rs, kk, 16);
	} else {
		FUNC3(&rs, newkey, 16);
	}

	FUNC2(inout, skip, len, rc4_crypt_int, &rs);
}