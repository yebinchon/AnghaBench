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
typedef  int /*<<< orphan*/  u_char ;
struct alg {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static void
FUNC9(struct alg *alg, const EVP_CIPHER *cipher, const char *key,
    const char *iv, const char *input, char *output, size_t size, int enc)
{
	EVP_CIPHER_CTX *ctx;
	int outl, total;

	ctx = FUNC3();
	if (ctx == NULL)
		FUNC8(1, "OpenSSL %s (%zu) ctx new failed: %s", alg->name,
		    size, FUNC0(FUNC1(), NULL));
	if (FUNC6(ctx, cipher, NULL, (const u_char *)key,
	    (const u_char *)iv, enc) != 1)
		FUNC8(1, "OpenSSL %s (%zu) ctx init failed: %s", alg->name,
		    size, FUNC0(FUNC1(), NULL));
	FUNC4(ctx, 0);
	if (FUNC7(ctx, (u_char *)output, &outl,
	    (const u_char *)input, size) != 1)
		FUNC8(1, "OpenSSL %s (%zu) cipher update failed: %s", alg->name,
		    size, FUNC0(FUNC1(), NULL));
	total = outl;
	if (FUNC5(ctx, (u_char *)output + outl, &outl) != 1)
		FUNC8(1, "OpenSSL %s (%zu) cipher final failed: %s", alg->name,
		    size, FUNC0(FUNC1(), NULL));
	total += outl;
	if (total != size)
		FUNC8(1, "OpenSSL %s (%zu) cipher size mismatch: %d", alg->name,
		    size, total);
	FUNC2(ctx);
}