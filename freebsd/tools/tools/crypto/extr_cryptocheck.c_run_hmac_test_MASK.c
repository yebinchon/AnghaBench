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
typedef  size_t u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  test_digest ;
struct alg {char* name; int /*<<< orphan*/ * (* evp_md ) () ;} ;
typedef  int /*<<< orphan*/  control_digest ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int EVP_MAX_MD_SIZE ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,char*,size_t,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t*) ; 
 char* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct alg*,char*,size_t,char*,size_t,char*,int*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC15(struct alg *alg, size_t size)
{
	const EVP_MD *md;
	char *key, *buffer;
	u_int key_len, digest_len;
	int crid;
	char control_digest[EVP_MAX_MD_SIZE], test_digest[EVP_MAX_MD_SIZE];

	FUNC11(control_digest, 0x3c, sizeof(control_digest));
	FUNC11(test_digest, 0x3c, sizeof(test_digest));

	md = alg->evp_md();
	key_len = FUNC2(md);
	FUNC5(FUNC2(md) <= sizeof(control_digest));

	key = FUNC4(key_len);
	buffer = FUNC4(size);

	/* OpenSSL HMAC. */
	digest_len = sizeof(control_digest);
	if (FUNC3(md, key, key_len, (u_char *)buffer, size,
	    (u_char *)control_digest, &digest_len) == NULL)
		FUNC7(1, "OpenSSL %s (%zu) HMAC failed: %s", alg->name,
		    size, FUNC0(FUNC1(), NULL));

	/* cryptodev HMAC. */
	if (!FUNC12(alg, buffer, size, key, key_len, test_digest, &crid))
		goto out;
	if (FUNC10(control_digest, test_digest, sizeof(control_digest)) != 0) {
		if (FUNC10(control_digest, test_digest, FUNC2(md)) == 0)
			FUNC13("%s (%zu) mismatch in trailer:\n",
			    alg->name, size);
		else
			FUNC13("%s (%zu) mismatch:\n", alg->name, size);
		FUNC13("control:\n");
		FUNC9(control_digest, sizeof(control_digest), NULL, 0);
		FUNC13("test (cryptodev device %s):\n", FUNC6(crid));
		FUNC9(test_digest, sizeof(test_digest), NULL, 0);
		goto out;
	}

	if (verbose)
		FUNC13("%s (%zu) matched (cryptodev device %s)\n",
		    alg->name, size, FUNC6(crid));

out:
	FUNC8(buffer);
	FUNC8(key);
}