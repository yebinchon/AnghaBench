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
typedef  int u_int ;
typedef  int /*<<< orphan*/  test_digest ;
struct alg {char* name; int /*<<< orphan*/ * (* evp_md ) () ;} ;
typedef  int /*<<< orphan*/  control_digest ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int EVP_MAX_MD_SIZE ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct alg*,char*,size_t,char*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct alg*,int /*<<< orphan*/  const*,char*,size_t,char*,int*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC12(struct alg *alg, size_t size)
{
	const EVP_MD *md;
	char *buffer;
	u_int digest_len;
	int crid;
	char control_digest[EVP_MAX_MD_SIZE], test_digest[EVP_MAX_MD_SIZE];

	FUNC7(control_digest, 0x3c, sizeof(control_digest));
	FUNC7(test_digest, 0x3c, sizeof(test_digest));

	md = alg->evp_md();
	FUNC2(FUNC0(md) <= sizeof(control_digest));

	buffer = FUNC1(size);

	/* OpenSSL HASH. */
	digest_len = sizeof(control_digest);
	FUNC9(alg, md, buffer, size, control_digest, &digest_len);

	/* cryptodev HASH. */
	if (!FUNC8(alg, buffer, size, test_digest, &crid))
		goto out;
	if (FUNC6(control_digest, test_digest, sizeof(control_digest)) != 0) {
		if (FUNC6(control_digest, test_digest, FUNC0(md)) == 0)
			FUNC10("%s (%zu) mismatch in trailer:\n",
			    alg->name, size);
		else
			FUNC10("%s (%zu) mismatch:\n", alg->name, size);
		FUNC10("control:\n");
		FUNC5(control_digest, sizeof(control_digest), NULL, 0);
		FUNC10("test (cryptodev device %s):\n", FUNC3(crid));
		FUNC5(test_digest, sizeof(test_digest), NULL, 0);
		goto out;
	}

	if (verbose)
		FUNC10("%s (%zu) matched (cryptodev device %s)\n",
		    alg->name, size, FUNC3(crid));

out:
	FUNC4(buffer);
}