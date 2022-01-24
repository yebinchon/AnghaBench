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
typedef  int /*<<< orphan*/  tmpmkey ;
struct g_eli_metadata {unsigned char* md_mkeys; int md_keys; int /*<<< orphan*/  md_keylen; int /*<<< orphan*/  md_ealgo; } ;
typedef  int /*<<< orphan*/  enckey ;

/* Variables and functions */
 int G_ELI_DATAIVKEYLEN ; 
 int G_ELI_MKEYLEN ; 
 int /*<<< orphan*/  G_ELI_USERKEYLEN ; 
 int SHA512_MDLEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char*,int,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*,int /*<<< orphan*/ ,char*,int,unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned char*,unsigned char const*) ; 

int
FUNC5(const struct g_eli_metadata *md, const unsigned char *key,
    unsigned char *mkey, unsigned nkey)
{
	unsigned char tmpmkey[G_ELI_MKEYLEN];
	unsigned char enckey[SHA512_MDLEN];	/* Key for encryption. */
	const unsigned char *mmkey;
	int bit, error;

	if (nkey > G_ELI_MKEYLEN)
		return (-1);

	/*
	 * The key for encryption is: enckey = HMAC_SHA512(Derived-Key, 1)
	 */
	FUNC3(key, G_ELI_USERKEYLEN, "\x01", 1, enckey, 0);

	mmkey = md->md_mkeys + G_ELI_MKEYLEN * nkey;
	bit = (1 << nkey);
	if (!(md->md_keys & bit))
		return (-1);
	FUNC0(mmkey, tmpmkey, G_ELI_MKEYLEN);
	error = FUNC2(md->md_ealgo, tmpmkey,
	    G_ELI_MKEYLEN, enckey, md->md_keylen);
	if (error != 0) {
		FUNC1(tmpmkey, sizeof(tmpmkey));
		FUNC1(enckey, sizeof(enckey));
		return (error);
	}
	if (FUNC4(tmpmkey, key)) {
		FUNC0(tmpmkey, mkey, G_ELI_DATAIVKEYLEN);
		FUNC1(tmpmkey, sizeof(tmpmkey));
		FUNC1(enckey, sizeof(enckey));
		return (0);
	}
	FUNC1(enckey, sizeof(enckey));
	FUNC1(tmpmkey, sizeof(tmpmkey));

	return (-1);
}