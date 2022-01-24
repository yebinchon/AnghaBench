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
struct executable {size_t x_checksum_off; size_t x_checksum_len; size_t x_certificate_entry_off; size_t x_certificate_entry_len; size_t x_headers_len; int x_nsections; size_t* x_section_off; size_t* x_section_len; size_t x_len; int /*<<< orphan*/  x_digest_len; int /*<<< orphan*/  x_digest; } ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  DIGEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct executable*,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 size_t FUNC8 (struct executable*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC9(struct executable *x)
{
	EVP_MD_CTX *mdctx;
	const EVP_MD *md;
	size_t sum_of_bytes_hashed;
	int i, ok;

	/*
	 * Windows Authenticode Portable Executable Signature Format
	 * spec version 1.0 specifies MD5 and SHA1.  However, pesign
	 * and sbsign both use SHA256, so do the same.
	 */
	md = FUNC5(DIGEST);
	if (md == NULL) {
		FUNC0(stderr);
		FUNC7(1, "EVP_get_digestbyname(\"%s\") failed", DIGEST);
	}

	mdctx = FUNC3();
	if (mdctx == NULL) {
		FUNC0(stderr);
		FUNC7(1, "EVP_MD_CTX_create(3) failed");
	}

	ok = FUNC2(mdctx, md, NULL);
	if (ok == 0) {
		FUNC0(stderr);
		FUNC7(1, "EVP_DigestInit_ex(3) failed");
	}

	/*
	 * According to the Authenticode spec, we need to compute
	 * the digest in a rather... specific manner; see "Calculating
	 * the PE Image Hash" part of the spec for details.
	 *
	 * First, everything from 0 to before the PE checksum.
	 */
	FUNC6(x, mdctx, 0, x->x_checksum_off);

	/*
	 * Second, from after the PE checksum to before the Certificate
	 * entry in Data Directory.
	 */
	FUNC6(x, mdctx, x->x_checksum_off + x->x_checksum_len,
	    x->x_certificate_entry_off -
	    (x->x_checksum_off + x->x_checksum_len));

	/*
	 * Then, from after the Certificate entry to the end of headers.
	 */
	FUNC6(x, mdctx,
	    x->x_certificate_entry_off + x->x_certificate_entry_len,
	    x->x_headers_len -
	    (x->x_certificate_entry_off + x->x_certificate_entry_len));

	/*
	 * Then, each section in turn, as specified in the PE Section Table.
	 *
	 * XXX: Sorting.
	 */
	sum_of_bytes_hashed = x->x_headers_len;
	for (i = 0; i < x->x_nsections; i++) {
		FUNC6(x, mdctx,
		    x->x_section_off[i], x->x_section_len[i]);
		sum_of_bytes_hashed += x->x_section_len[i];
	}

	/*
	 * I believe this can happen with overlapping sections.
	 */
	if (sum_of_bytes_hashed > x->x_len)
		FUNC7(1, "number of bytes hashed is larger than file size");

	/*
	 * I can't really explain this one; just do what the spec says.
	 */
	if (sum_of_bytes_hashed < x->x_len) {
		FUNC6(x, mdctx, sum_of_bytes_hashed,
		    x->x_len - (FUNC8(x) + sum_of_bytes_hashed));
	}

	ok = FUNC1(mdctx, x->x_digest, &x->x_digest_len);
	if (ok == 0) {
		FUNC0(stderr);
		FUNC7(1, "EVP_DigestFinal_ex(3) failed");
	}

	FUNC4(mdctx);
}