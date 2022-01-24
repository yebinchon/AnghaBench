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
 size_t AES_CBC_MAC_HASH_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  EVP_CTRL_CCM_GET_TAG ; 
 int /*<<< orphan*/  EVP_CTRL_CCM_SET_IVLEN ; 
 int /*<<< orphan*/  EVP_CTRL_CCM_SET_TAG ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static void
FUNC9(struct alg *alg, const EVP_CIPHER *cipher, const char *key,
    const char *iv, size_t iv_len, const char *aad, size_t aad_len,
		    const char *input, char *output, size_t size, char *tag)
{
	EVP_CIPHER_CTX *ctx;
	int outl, total;

	ctx = FUNC4();
	if (ctx == NULL)
		FUNC8(1, "OpenSSL %s (%zu) ctx new failed: %s", alg->name,
		    size, FUNC0(FUNC1(), NULL));
	if (FUNC6(ctx, cipher, NULL, NULL, NULL) != 1)
		FUNC8(1, "OpenSSL %s (%zu) ctx init failed: %s", alg->name,
		    size, FUNC0(FUNC1(), NULL));
	if (FUNC2(ctx, EVP_CTRL_CCM_SET_IVLEN, iv_len, NULL) != 1)
		FUNC8(1, "OpenSSL %s (%zu) setting iv length failed: %s", alg->name,
		    size, FUNC0(FUNC1(), NULL));
	if (FUNC2(ctx, EVP_CTRL_CCM_SET_TAG, AES_CBC_MAC_HASH_LEN, NULL) != 1)
		FUNC8(1, "OpenSSL %s (%zu) setting tag length failed: %s", alg->name,
		     size, FUNC0(FUNC1(), NULL));
	if (FUNC6(ctx, NULL, NULL, (const u_char *)key,
	    (const u_char *)iv) != 1)
		FUNC8(1, "OpenSSL %s (%zu) ctx init failed: %s", alg->name,
		    size, FUNC0(FUNC1(), NULL));
	if (FUNC7(ctx, NULL, &outl, NULL, size) != 1)
		FUNC8(1, "OpenSSL %s (%zu) unable to set data length: %s", alg->name,
		     size, FUNC0(FUNC1(), NULL));

	if (aad != NULL) {
		if (FUNC7(ctx, NULL, &outl, (const u_char *)aad,
		    aad_len) != 1)
			FUNC8(1, "OpenSSL %s (%zu) aad update failed: %s",
			    alg->name, size,
			    FUNC0(FUNC1(), NULL));
	}
	if (FUNC7(ctx, (u_char *)output, &outl,
	    (const u_char *)input, size) != 1)
		FUNC8(1, "OpenSSL %s (%zu) encrypt update failed: %s", alg->name,
		    size, FUNC0(FUNC1(), NULL));
	total = outl;
	if (FUNC5(ctx, (u_char *)output + outl, &outl) != 1)
		FUNC8(1, "OpenSSL %s (%zu) encrypt final failed: %s", alg->name,
		    size, FUNC0(FUNC1(), NULL));
	total += outl;
	if (total != size)
		FUNC8(1, "OpenSSL %s (%zu) encrypt size mismatch: %d", alg->name,
		    size, total);
	if (FUNC2(ctx, EVP_CTRL_CCM_GET_TAG, AES_CBC_MAC_HASH_LEN,
	    tag) != 1)
		FUNC8(1, "OpenSSL %s (%zu) get tag failed: %s", alg->name,
		    size, FUNC0(FUNC1(), NULL));
	FUNC3(ctx);
}