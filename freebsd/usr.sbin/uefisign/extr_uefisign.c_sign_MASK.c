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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  PKCS7_SIGNER_INFO ;
typedef  int /*<<< orphan*/  PKCS7 ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIGEST ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_pkcs9_contentType ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int PKCS7_BINARY ; 
 int PKCS7_PARTIAL ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_ASN1_OBJECT ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,...) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC19 (void**,size_t*,int) ; 
 int /*<<< orphan*/  FUNC20 (void*,size_t,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC21(X509 *cert, EVP_PKEY *key, int pipefd)
{
	PKCS7 *pkcs7;
	BIO *bio, *out;
	const EVP_MD *md;
	PKCS7_SIGNER_INFO *info;
	void *digest, *signature;
	size_t digest_len, signature_len;
	int ok;

	FUNC15(cert != NULL);
	FUNC15(key != NULL);

	FUNC19(&digest, &digest_len, pipefd);

	bio = FUNC3(digest, digest_len);
	if (bio == NULL) {
		FUNC8(stderr);
		FUNC16(1, "BIO_new_mem_buf(3) failed");
	}

	pkcs7 = FUNC13(NULL, NULL, NULL, bio, PKCS7_BINARY | PKCS7_PARTIAL);
	if (pkcs7 == NULL) {
		FUNC8(stderr);
		FUNC16(1, "PKCS7_sign(3) failed");
	}

	md = FUNC9(DIGEST);
	if (md == NULL) {
		FUNC8(stderr);
		FUNC16(1, "EVP_get_digestbyname(\"%s\") failed", DIGEST);
	}

	info = FUNC14(pkcs7, cert, key, md, 0);
	if (info == NULL) {
		FUNC8(stderr);
		FUNC16(1, "PKCS7_sign_add_signer(3) failed");
	}

	/*
	 * XXX: All the signed binaries seem to have this, but where is it
	 *      described in the spec?
	 */
	FUNC11(info, NID_pkcs9_contentType,
	    V_ASN1_OBJECT, FUNC10("1.3.6.1.4.1.311.2.1.4", 1));

	FUNC18(pkcs7, digest, digest_len);

#if 0
	out = BIO_new(BIO_s_file());
	BIO_set_fp(out, stdout, BIO_NOCLOSE);
	PKCS7_print_ctx(out, pkcs7, 0, NULL);

	i2d_PKCS7_bio(out, pkcs7);
#endif

	out = FUNC2(FUNC5());
	if (out == NULL) {
		FUNC8(stderr);
		FUNC16(1, "BIO_new(3) failed");
	}

	ok = FUNC17(out, pkcs7);
	if (ok == 0) {
		FUNC8(stderr);
		FUNC16(1, "i2d_PKCS7_bio(3) failed");
	}

	signature_len = FUNC1(out, &signature);
	if (signature_len <= 0) {
		FUNC8(stderr);
		FUNC16(1, "BIO_get_mem_data(3) failed");
	}

	(void)FUNC6(out, BIO_NOCLOSE);
	FUNC0(out);

	FUNC20(signature, signature_len, pipefd);
}