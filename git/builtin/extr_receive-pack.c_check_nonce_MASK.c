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
typedef  scalar_t__ timestamp_t ;

/* Variables and functions */
 char* NONCE_BAD ; 
 char* NONCE_MISSING ; 
 char* NONCE_OK ; 
 char* NONCE_SLOP ; 
 char* NONCE_UNSOLICITED ; 
 char* FUNC0 (char const*,size_t,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (long) ; 
 long nonce_stamp_slop ; 
 scalar_t__ nonce_stamp_slop_limit ; 
 scalar_t__ FUNC3 (char*,char**,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* push_cert_nonce ; 
 int /*<<< orphan*/  service_dir ; 
 int /*<<< orphan*/  stateless_rpc ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (char*) ; 

__attribute__((used)) static const char *FUNC7(const char *buf, size_t len)
{
	char *nonce = FUNC0(buf, len, "nonce", NULL);
	timestamp_t stamp, ostamp;
	char *bohmac, *expect = NULL;
	const char *retval = NONCE_BAD;

	if (!nonce) {
		retval = NONCE_MISSING;
		goto leave;
	} else if (!push_cert_nonce) {
		retval = NONCE_UNSOLICITED;
		goto leave;
	} else if (!FUNC5(push_cert_nonce, nonce)) {
		retval = NONCE_OK;
		goto leave;
	}

	if (!stateless_rpc) {
		/* returned nonce MUST match what we gave out earlier */
		retval = NONCE_BAD;
		goto leave;
	}

	/*
	 * In stateless mode, we may be receiving a nonce issued by
	 * another instance of the server that serving the same
	 * repository, and the timestamps may not match, but the
	 * nonce-seed and dir should match, so we can recompute and
	 * report the time slop.
	 *
	 * In addition, when a nonce issued by another instance has
	 * timestamp within receive.certnonceslop seconds, we pretend
	 * as if we issued that nonce when reporting to the hook.
	 */

	/* nonce is concat(<seconds-since-epoch>, "-", <hmac>) */
	if (*nonce <= '0' || '9' < *nonce) {
		retval = NONCE_BAD;
		goto leave;
	}
	stamp = FUNC3(nonce, &bohmac, 10);
	if (bohmac == nonce || bohmac[0] != '-') {
		retval = NONCE_BAD;
		goto leave;
	}

	expect = FUNC4(service_dir, stamp);
	if (FUNC5(expect, nonce)) {
		/* Not what we would have signed earlier */
		retval = NONCE_BAD;
		goto leave;
	}

	/*
	 * By how many seconds is this nonce stale?  Negative value
	 * would mean it was issued by another server with its clock
	 * skewed in the future.
	 */
	ostamp = FUNC3(push_cert_nonce, NULL, 10);
	nonce_stamp_slop = (long)ostamp - (long)stamp;

	if (nonce_stamp_slop_limit &&
	    FUNC2(nonce_stamp_slop) <= nonce_stamp_slop_limit) {
		/*
		 * Pretend as if the received nonce (which passes the
		 * HMAC check, so it is not a forged by third-party)
		 * is what we issued.
		 */
		FUNC1((void *)push_cert_nonce);
		push_cert_nonce = FUNC6(nonce);
		retval = NONCE_OK;
	} else {
		retval = NONCE_SLOP;
	}

leave:
	FUNC1(nonce);
	FUNC1(expect);
	return retval;
}