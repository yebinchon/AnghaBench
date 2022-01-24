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
typedef  int /*<<< orphan*/  enckey ;

/* Variables and functions */
 int /*<<< orphan*/  G_ELI_MKEYLEN ; 
 int /*<<< orphan*/  G_ELI_USERKEYLEN ; 
 int SHA512_MDLEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int FUNC1 (unsigned int,unsigned char*,int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,int /*<<< orphan*/ ,char*,int,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char const*) ; 

int
FUNC4(unsigned algo, const unsigned char *key, unsigned keylen,
    unsigned char *mkey)
{
	unsigned char enckey[SHA512_MDLEN];	/* Key for encryption. */
	int error;

	/*
	 * To calculate HMAC, the whole key (G_ELI_USERKEYLEN bytes long) will
	 * be used.
	 */
	FUNC3(mkey, key);
	/*
	 * The key for encryption is: enckey = HMAC_SHA512(Derived-Key, 1)
	 */
	FUNC2(key, G_ELI_USERKEYLEN, "\x01", 1, enckey, 0);
	/*
	 * Encrypt the Master-Key and HMAC() result with the given key (this
	 * time only 'keylen' bits from the key are used).
	 */
	error = FUNC1(algo, mkey, G_ELI_MKEYLEN, enckey, keylen);

	FUNC0(enckey, sizeof(enckey));

	return (error);
}