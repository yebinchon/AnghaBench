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
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SIGNATURE_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (char*,char const*,int) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int FUNC9 (int,int) ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

__attribute__((used)) static int
FUNC12(const char *pkgpath, bool force)
{
	char path[MAXPATHLEN];
	char pkgstatic[MAXPATHLEN];
	const char *signature_type;
	int fd_pkg, fd_sig, ret;

	fd_sig = -1;
	ret = -1;

	fd_pkg = FUNC6(pkgpath, O_RDONLY);
	if (fd_pkg == -1)
		FUNC2(EXIT_FAILURE, "Unable to open %s", pkgpath);

	if (FUNC1(SIGNATURE_TYPE, &signature_type) != 0) {
		FUNC11("Error looking up SIGNATURE_TYPE");
		goto cleanup;
	}
	if (signature_type != NULL &&
	    FUNC8(signature_type, "NONE") != 0) {
		if (FUNC8(signature_type, "FINGERPRINTS") == 0) {

			FUNC7(path, sizeof(path), "%s.sig", pkgpath);

			if ((fd_sig = FUNC6(path, O_RDONLY)) == -1) {
				FUNC4(stderr, "Signature for pkg not "
				    "available.\n");
				goto cleanup;
			}

			if (FUNC10(fd_pkg, fd_sig) == false)
				goto cleanup;

		} else if (FUNC8(signature_type, "PUBKEY") == 0) {

			FUNC7(path, sizeof(path), "%s.pubkeysig", pkgpath);

			if ((fd_sig = FUNC6(path, O_RDONLY)) == -1) {
				FUNC4(stderr, "Signature for pkg not "
				    "available.\n");
				goto cleanup;
			}

			if (FUNC9(fd_pkg, fd_sig) == false)
				goto cleanup;

		} else {
			FUNC11("Signature type %s is not supported for "
			    "bootstrapping.", signature_type);
			goto cleanup;
		}
	}

	if ((ret = FUNC3(fd_pkg, pkgstatic, MAXPATHLEN)) == 0)
		ret = FUNC5(pkgstatic, pkgpath, force);

cleanup:
	FUNC0(fd_pkg);
	if (fd_sig != -1)
		FUNC0(fd_sig);

	return (ret);
}