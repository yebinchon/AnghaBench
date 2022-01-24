#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* sign; } ;
struct TYPE_9__ {TYPE_2__ d; } ;
struct TYPE_7__ {int /*<<< orphan*/  contents; } ;
typedef  TYPE_3__ PKCS7 ;
typedef  int /*<<< orphan*/  CONF ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_TYPE ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (void*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  V_ASN1_SEQUENCE ; 
 int /*<<< orphan*/  FUNC15 (char**,int /*<<< orphan*/ ,char*) ; 
 char* FUNC16 (char const*,size_t) ; 
 unsigned char* FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (int,char*) ; 
 int /*<<< orphan*/  FUNC19 (int,char*) ; 
 int FUNC20 (int /*<<< orphan*/ *,unsigned char**) ; 
 int /*<<< orphan*/  magic_fmt ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC21(PKCS7 *pkcs7, const char *digest, size_t digest_len)
{
	BIO *bio, *t_bio;
	ASN1_TYPE *t;
	ASN1_STRING *s;
	CONF *cnf;
	unsigned char *buf, *tmp;
	char *digest_hex, *magic_conf, *str;
	int len, nid, ok;

	digest_hex = FUNC16(digest, digest_len);

	/*
	 * Construct the SpcIndirectDataContent chunk.
	 */
	nid = FUNC11("1.3.6.1.4.1.311.2.1.4", NULL, NULL);

	FUNC15(&magic_conf, magic_fmt, digest_hex);
	if (magic_conf == NULL)
		FUNC18(1, "asprintf");

	bio = FUNC5((void *)magic_conf, -1);
	if (bio == NULL) {
		FUNC7(stderr);
		FUNC19(1, "BIO_new_mem_buf(3) failed");
	}

	cnf = FUNC10(NULL);
	if (cnf == NULL) {
		FUNC7(stderr);
		FUNC19(1, "NCONF_new(3) failed");
	}

	ok = FUNC9(cnf, bio, NULL);
	if (ok == 0) {
		FUNC7(stderr);
		FUNC19(1, "NCONF_load_bio(3) failed");
	}

	str = FUNC8(cnf, "default", "asn1");
	if (str == NULL) {
		FUNC7(stderr);
		FUNC19(1, "NCONF_get_string(3) failed");
	}

	t = FUNC4(str, cnf);
	if (t == NULL) {
		FUNC7(stderr);
		FUNC19(1, "ASN1_generate_nconf(3) failed");
	}

	/*
	 * We now have our proprietary piece of ASN.1.  Let's do
	 * the actual signing.
	 */
	len = FUNC20(t, NULL);
	tmp = buf = FUNC17(1, len);
	if (tmp == NULL)
		FUNC18(1, "calloc");
	FUNC20(t, &tmp);

	/*
	 * We now have contents of 't' stuffed into memory buffer 'buf'.
	 */
	tmp = NULL;
	t = NULL;

	t_bio = FUNC13(pkcs7, NULL);
	if (t_bio == NULL) {
		FUNC7(stderr);
		FUNC19(1, "PKCS7_dataInit(3) failed");
	}

	FUNC6(t_bio, buf + 2, len - 2);

	ok = FUNC12(pkcs7, t_bio);
	if (ok == 0) {
		FUNC7(stderr);
		FUNC19(1, "PKCS7_dataFinal(3) failed");
	}

	t = FUNC2();
	s = FUNC0();
	FUNC1(s, buf, len);
	FUNC3(t, V_ASN1_SEQUENCE, s);

	FUNC14(pkcs7->d.sign->contents, nid, t);
}