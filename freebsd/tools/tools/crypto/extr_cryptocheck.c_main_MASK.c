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
typedef  size_t u_int ;
struct alg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_FLAG_HARDWARE ; 
 int /*<<< orphan*/  aad_len ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct alg* FUNC2 (char const*) ; 
 int /*<<< orphan*/  crid ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 struct alg* FUNC5 (char const*) ; 
 int FUNC6 (int,char**,char*) ; 
 size_t FUNC7 (size_t*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC8 (size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct alg*,size_t*,size_t) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC15 (char const*,char) ; 
 size_t FUNC16 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

int
FUNC19(int ac, char **av)
{
	const char *algname;
	struct alg *alg;
	size_t sizes[128];
	u_int i, nsizes;
	bool testall;
	int ch;

	algname = NULL;
	crid = CRYPTO_FLAG_HARDWARE;
	testall = false;
	verbose = false;
	while ((ch = FUNC6(ac, av, "A:a:d:vz")) != -1)
		switch (ch) {
		case 'A':
			aad_len = FUNC1(optarg);
			break;
		case 'a':
			algname = optarg;
			break;
		case 'd':
			crid = FUNC3(optarg);
			break;
		case 'v':
			verbose = true;
			break;
		case 'z':
			testall = true;
			break;
		default:
			FUNC17();
		}
	ac -= optind;
	av += optind;
	nsizes = 0;
	while (ac > 0) {
		char *cp;

		if (nsizes >= FUNC7(sizes)) {
			FUNC18("Too many sizes, ignoring extras");
			break;
		}
		sizes[nsizes] = FUNC16(av[0], &cp, 0);
		if (*cp != '\0')
			FUNC4(1, "Bad size %s", av[0]);
		nsizes++;
		ac--;
		av++;
	}

	if (algname == NULL)
		FUNC4(1, "Algorithm required");
	if (nsizes == 0) {
		sizes[0] = 16;
		nsizes++;
		if (testall) {
			while (sizes[nsizes - 1] * 2 < 240 * 1024) {
				FUNC0(nsizes < FUNC7(sizes));
				sizes[nsizes] = sizes[nsizes - 1] * 2;
				nsizes++;
			}
			if (sizes[nsizes - 1] < 240 * 1024) {
				FUNC0(nsizes < FUNC7(sizes));
				sizes[nsizes] = 240 * 1024;
				nsizes++;
			}
		}
	}

	if (FUNC14(algname, "hash") == 0)
		FUNC11(sizes, nsizes);
	else if (FUNC14(algname, "hmac") == 0)
		FUNC12(sizes, nsizes);
	else if (FUNC14(algname, "blkcipher") == 0)
		FUNC10(sizes, nsizes);
	else if (FUNC14(algname, "authenc") == 0)
		FUNC9(sizes, nsizes);
	else if (FUNC14(algname, "aead") == 0)
		FUNC8(sizes, nsizes);
	else if (FUNC14(algname, "all") == 0) {
		FUNC11(sizes, nsizes);
		FUNC12(sizes, nsizes);
		FUNC10(sizes, nsizes);
		FUNC9(sizes, nsizes);
		FUNC8(sizes, nsizes);
	} else if (FUNC15(algname, '+') != NULL) {
		alg = FUNC2(algname);
		FUNC13(alg, sizes, nsizes);
	} else {
		alg = FUNC5(algname);
		if (alg == NULL)
			FUNC4(1, "Invalid algorithm %s", algname);
		FUNC13(alg, sizes, nsizes);
	}

	return (0);
}