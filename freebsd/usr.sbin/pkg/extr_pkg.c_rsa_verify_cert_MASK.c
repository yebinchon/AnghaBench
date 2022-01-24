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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int SHA256_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (unsigned char const*,int) ; 
 int /*<<< orphan*/ * FUNC12 (char const*) ; 
 int FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int FUNC15 (int,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 

__attribute__((used)) static bool
FUNC19(int fd, const char *sigfile, const unsigned char *key,
    int keylen, unsigned char *sig, int siglen)
{
	EVP_MD_CTX *mdctx;
	EVP_PKEY *pkey;
	char sha256[(SHA256_DIGEST_LENGTH * 2) + 2];
	char errbuf[1024];
	bool ret;

	pkey = NULL;
	mdctx = NULL;
	ret = false;

	FUNC10();

	/* Compute SHA256 of the package. */
	if (FUNC13(fd, 0, 0) == -1) {
		FUNC17("lseek");
		goto cleanup;
	}
	if ((FUNC15(fd, sha256)) == -1) {
		FUNC18("Error creating SHA256 hash for package");
		goto cleanup;
	}

	if (sigfile != NULL) {
		if ((pkey = FUNC12(sigfile)) == NULL) {
			FUNC18("Error reading public key");
			goto cleanup;
		}
	} else {
		if ((pkey = FUNC11(key, keylen)) == NULL) {
			FUNC18("Error reading public key");
			goto cleanup;
		}
	}

	/* Verify signature of the SHA256(pkg) is valid. */
	if ((mdctx = FUNC6()) == NULL) {
		FUNC18("%s", FUNC0(FUNC2(), errbuf));
		goto error;
	}

	if (FUNC4(mdctx, NULL, FUNC9(), NULL, pkey) != 1) {
		FUNC18("%s", FUNC0(FUNC2(), errbuf));
		goto error;
	}
	if (FUNC5(mdctx, sha256, FUNC16(sha256)) != 1) {
		FUNC18("%s", FUNC0(FUNC2(), errbuf));
		goto error;
	}

	if (FUNC3(mdctx, sig, siglen) != 1) {
		FUNC18("%s", FUNC0(FUNC2(), errbuf));
		goto error;
	}

	ret = true;
	FUNC14("done\n");
	goto cleanup;

error:
	FUNC14("failed\n");

cleanup:
	if (pkey)
		FUNC8(pkey);
	if (mdctx)
		FUNC7(mdctx);
	FUNC1();

	return (ret);
}