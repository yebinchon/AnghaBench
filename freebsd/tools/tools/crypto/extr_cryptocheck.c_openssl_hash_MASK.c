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
struct alg {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,void*,unsigned int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct alg *alg, const EVP_MD *md, const void *buffer,
    size_t size, void *digest_out, unsigned *digest_sz_out)
{
	EVP_MD_CTX *mdctx;
	const char *errs;
	int rc;

	errs = "";

	mdctx = FUNC5();
	if (mdctx == NULL)
		goto err_out;

	rc = FUNC3(mdctx, md, NULL);
	if (rc != 1)
		goto err_out;

	rc = FUNC4(mdctx, buffer, size);
	if (rc != 1)
		goto err_out;

	rc = FUNC2(mdctx, digest_out, digest_sz_out);
	if (rc != 1)
		goto err_out;

	FUNC6(mdctx);
	return;

err_out:
	FUNC7(1, "OpenSSL %s HASH failed%s: %s", alg->name, errs,
	    FUNC0(FUNC1(), NULL));
}