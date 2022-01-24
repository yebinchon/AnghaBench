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
typedef  char uint8_t ;
struct mbuf {int dummy; } ;
struct krb5_key_state {char* ks_key; } ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  MD5Update_int ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,size_t,size_t,char*) ; 

__attribute__((used)) static void
FUNC6(const struct krb5_key_state *ks, int usage,
    struct mbuf *inout, size_t skip, size_t inlen, size_t outlen)
{
	MD5_CTX md5;
	uint8_t Ksign[16];
	uint8_t t[4];
	uint8_t sgn_cksum[16];

	FUNC3(ks->ks_key, "signaturekey", 13, Ksign);

	t[0] = usage >> 0;
	t[1] = usage >> 8;
	t[2] = usage >> 16;
	t[3] = usage >> 24;

	FUNC1(&md5);
	FUNC2(&md5, t, 4);
	FUNC4(inout, skip, inlen, MD5Update_int, &md5);
	FUNC0(sgn_cksum, &md5);
	
	FUNC3(Ksign, sgn_cksum, 16, sgn_cksum);
	FUNC5(inout, skip + inlen, outlen, sgn_cksum);
}