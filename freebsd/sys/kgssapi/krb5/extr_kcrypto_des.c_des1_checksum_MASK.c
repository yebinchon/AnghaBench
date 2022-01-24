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
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CRD_F_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MD5Update_int ; 
 int /*<<< orphan*/  FUNC2 (struct krb5_key_state const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,size_t,size_t,char*) ; 

__attribute__((used)) static void
FUNC5(const struct krb5_key_state *ks, int usage,
    struct mbuf *inout, size_t skip, size_t inlen, size_t outlen)
{
	char hash[16];
	MD5_CTX md5;

	/*
	 * This checksum is specifically for GSS-API. First take the
	 * MD5 checksum of the message, then calculate the CBC mode
	 * checksum of that MD5 checksum using a zero IV.
	 */
	FUNC1(&md5);
	FUNC3(inout, skip, inlen, MD5Update_int, &md5);
	FUNC0(hash, &md5);

	FUNC2(ks, 0, hash, 0, 16, NULL, CRD_F_ENCRYPT);
	FUNC4(inout, skip + inlen, outlen, hash + 8);
}