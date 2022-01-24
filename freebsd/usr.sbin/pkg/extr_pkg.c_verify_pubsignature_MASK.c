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
struct pubkey {struct pubkey* sig; int /*<<< orphan*/  siglen; } ;

/* Variables and functions */
 int /*<<< orphan*/  PUBKEY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pubkey*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 struct pubkey* FUNC4 (int) ; 
 int FUNC5 (int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pubkey*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static bool
FUNC7(int fd_pkg, int fd_sig)
{
	struct pubkey *pk;
	const char *pubkey;
	bool ret;

	pk = NULL;
	pubkey = NULL;
	ret = false;
	if (FUNC0(PUBKEY, &pubkey) != 0) {
		FUNC6("No CONFIG_PUBKEY defined");
		goto cleanup;
	}

	if ((pk = FUNC4(fd_sig)) == NULL) {
		FUNC6("Error reading signature");
		goto cleanup;
	}

	/* Verify the signature. */
	FUNC3("Verifying signature with public key %s... ", pubkey);
	if (FUNC5(fd_pkg, pubkey, NULL, 0, pk->sig,
	    pk->siglen) == false) {
		FUNC1(stderr, "Signature is not valid\n");
		goto cleanup;
	}

	ret = true;

cleanup:
	if (pk) {
		FUNC2(pk->sig);
		FUNC2(pk);
	}

	return (ret);
}