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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  iv ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
#define  CRYPTO_3DES_CBC 132 
#define  CRYPTO_AES_CBC 131 
 int CRYPTO_AES_XTS ; 
#define  CRYPTO_BLF_CBC 130 
#define  CRYPTO_CAMELLIA_CBC 129 
#define  CRYPTO_NULL_CBC 128 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC18(u_int algo, int enc, u_char *data, size_t datasize,
    const u_char *key, size_t keysize)
{
	EVP_CIPHER_CTX *ctx;
	const EVP_CIPHER *type;
	u_char iv[keysize];
	int outsize;

	FUNC16(algo != CRYPTO_AES_XTS);

	switch (algo) {
	case CRYPTO_NULL_CBC:
		type = FUNC15();
		break;
	case CRYPTO_AES_CBC:
		switch (keysize) {
		case 128:
			type = FUNC7();
			break;
		case 192:
			type = FUNC8();
			break;
		case 256:
			type = FUNC9();
			break;
		default:
			return (EINVAL);
		}
		break;
	case CRYPTO_BLF_CBC:
		type = FUNC10();
		break;
#ifndef OPENSSL_NO_CAMELLIA
	case CRYPTO_CAMELLIA_CBC:
		switch (keysize) {
		case 128:
			type = FUNC11();
			break;
		case 192:
			type = FUNC12();
			break;
		case 256:
			type = FUNC13();
			break;
		default:
			return (EINVAL);
		}
		break;
#endif
	case CRYPTO_3DES_CBC:
		type = FUNC14();
		break;
	default:
		return (EINVAL);
	}

	ctx = FUNC1();
	if (ctx == NULL)
		return (ENOMEM);

	FUNC5(ctx, type, NULL, NULL, NULL, enc);
	FUNC2(ctx, keysize / 8);
	FUNC3(ctx, 0);
	FUNC17(iv, sizeof(iv));
	FUNC5(ctx, NULL, NULL, key, iv, enc);

	if (FUNC6(ctx, data, &outsize, data, datasize) == 0) {
		FUNC0(ctx);
		return (EINVAL);
	}
	FUNC16(outsize == (int)datasize);

	if (FUNC4(ctx, data + outsize, &outsize) == 0) {
		FUNC0(ctx);
		return (EINVAL);
	}
	FUNC16(outsize == 0);

	FUNC0(ctx);
	return (0);
}