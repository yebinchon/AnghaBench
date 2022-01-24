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
typedef  int /*<<< orphan*/  hmkey ;

/* Variables and functions */
 int G_ELI_DATAIVKEYLEN ; 
 int G_ELI_USERKEYLEN ; 
 int SHA512_MDLEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,int,...) ; 

__attribute__((used)) static int
FUNC3(const unsigned char *mkey, const unsigned char *key)
{
	const unsigned char *odhmac;	/* On-disk HMAC. */
	unsigned char chmac[SHA512_MDLEN];	/* Calculated HMAC. */
	unsigned char hmkey[SHA512_MDLEN];	/* Key for HMAC. */

	/*
	 * The key for HMAC calculations is: hmkey = HMAC_SHA512(Derived-Key, 0)
	 */
	FUNC2(key, G_ELI_USERKEYLEN, "\x00", 1, hmkey, 0);

	odhmac = mkey + G_ELI_DATAIVKEYLEN;

	/* Calculate HMAC from Data-Key and IV-Key. */
	FUNC2(hmkey, sizeof(hmkey), mkey, G_ELI_DATAIVKEYLEN,
	    chmac, 0);

	FUNC1(hmkey, sizeof(hmkey));

	/*
	 * Compare calculated HMAC with HMAC from metadata.
	 * If two HMACs are equal, 'key' is correct.
	 */
	return (!FUNC0(odhmac, chmac, SHA512_MDLEN));
}