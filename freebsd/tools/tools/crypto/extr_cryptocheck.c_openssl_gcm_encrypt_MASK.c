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
 int /*<<< orphan*/  AES_GMAC_HASH_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVP_CTRL_GCM_GET_TAG ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static void
FUNC10(struct alg *alg, const EVP_CIPHER *cipher, const char *key,
    const char *iv, const char *aad, size_t aad_len, const char *input,
    char *output, size_t size, char *tag)
{
	EVP_CIPHER_CTX *ctx;
	int outl, total;

	ctx = FUNC4();
	if (ctx == NULL)
		FUNC9(1, "OpenSSL %s (%zu) ctx new failed: %s", alg->name,
		    size, FUNC0(FUNC1(), NULL));
	if (FUNC7(ctx, cipher, NULL, (const u_char *)key,
	    (const u_char *)iv) != 1)
		FUNC9(1, "OpenSSL %s (%zu) ctx init failed: %s", alg->name,
		    size, FUNC0(FUNC1(), NULL));
	FUNC5(ctx, 0);
	if (aad != NULL) {
		if (FUNC8(ctx, NULL, &outl, (const u_char *)aad,
		    aad_len) != 1)
			FUNC9(1, "OpenSSL %s (%zu) aad update failed: %s",
			    alg->name, size,
			    FUNC0(FUNC1(), NULL));
	}
	if (FUNC8(ctx, (u_char *)output, &outl,
	    (const u_char *)input, size) != 1)
		FUNC9(1, "OpenSSL %s (%zu) encrypt update failed: %s", alg->name,
		    size, FUNC0(FUNC1(), NULL));
	total = outl;
	if (FUNC6(ctx, (u_char *)output + outl, &outl) != 1)
		FUNC9(1, "OpenSSL %s (%zu) encrypt final failed: %s", alg->name,
		    size, FUNC0(FUNC1(), NULL));
	total += outl;
	if (total != size)
		FUNC9(1, "OpenSSL %s (%zu) encrypt size mismatch: %d", alg->name,
		    size, total);
	if (FUNC2(ctx, EVP_CTRL_GCM_GET_TAG, AES_GMAC_HASH_LEN,
	    tag) != 1)
		FUNC9(1, "OpenSSL %s (%zu) get tag failed: %s", alg->name,
		    size, FUNC0(FUNC1(), NULL));
	FUNC3(ctx);
}